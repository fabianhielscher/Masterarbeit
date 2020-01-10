from __future__ import absolute_import, division, print_function, unicode_literals
import numpy as np
import random
import tensorflow as tf
from tensorflow.keras.layers import Dense, Flatten, Conv2D, MaxPool2D
from tensorflow.keras import Model
import datetime
from Environment import Environment
from Agent import Agent
from Transformation import rigid_2d
from PIL import Image
import matplotlib.pyplot as plt
import sys

# sys.setrecursionlimit(99999)

class MyModel(Model):
    def __init__(self):
        super(MyModel, self).__init__()
        self.conv1 = Conv2D(8, 3, activation='relu')
        self.max1 = MaxPool2D((2,2))

        self.conv2 = Conv2D(32, 3, activation='relu')
        self.max2 = MaxPool2D((2, 2))

        self.conv3 = Conv2D(32, 3, activation='relu')
        self.conv4 = Conv2D(128, 3, activation='relu')
        self.conv5 = Conv2D(128, 3, activation='relu')
        self.flatten = Flatten()
        
        self.d1 = Dense(512, activation='relu')
        self.d2 = Dense(512, activation='relu')
        self.d3 = Dense(64, activation='relu')
        self.out = Dense(6)

    def call(self, x):
        x = self.conv1(x)
        x = self.max1(x)
        x = self.conv2(x)
        x = self.max2(x)
        x = self.conv3(x)
        x = self.conv4(x)
        x = self.conv5(x)
        x = self.flatten(x)
        x = self.d1(x)
        x = self.d2(x)
        x = self.d3(x)
        x = self.out(x)
        return x


img = Image.open("data/img_i.png").convert('L')


model = MyModel()

loss_object = tf.keras.losses.MeanSquaredError()
# optimizer = tf.keras.optimizers.Adam(learning_rate=0.00006, beta_1=0.7)
optimizer = tf.keras.optimizers.RMSprop(learning_rate=0.00006)
train_loss = tf.keras.metrics.Mean(name='train_loss')
test_acc = tf.keras.metrics.Mean(name='test_acc')

# train_accuracy = tf.keras.metrics.SparseCategoricalAccuracy(name='train_accuracy')
# test_accuracy = tf.keras.metrics.SparseCategoricalAccuracy(name='test_accuracy')

def generate_training_data():

    t = rigid_2d(
        img,
        np.random.rand() * 20 - 10,
        np.random.rand() * 20 - 10,
        np.random.rand() * 20 - 10,
        np.random.rand() * 20 - 10,
        np.random.rand() * 20 - 10,
        np.random.rand() * 20 - 10
    )

    n_steps = 0
    train_y = np.zeros(shape=(0, 6))
    train_x = np.zeros(shape=(0, 128, 128))
    while True:
        # check if agent is done
        if t.done():
            break
        else:
            # get train x difference image
            img_diff = t.return_diff_image()
            train_x = np.vstack([train_x, img_diff])

            # get q-value for each action
            q_array = np.zeros(shape=(1, 6))
            # print('\nstarting at step: {}'.format(n_steps))
            for action in range(t.n_actions):

                q = t.get_q_value(t.T_mov, n_steps, action)
                q_array[0, action] = q

            # apply best action
            best_action, _ = t.return_action_with_lowest_next_loss(t.T_mov)
            t.apply_action_discrete(best_action)

            # concat new q-array
            train_y = np.vstack([train_y, q_array])

            n_steps += 1


    # print('number of steps: {}'.format(n_steps))
    # print('number of steps: {}'.format(len(t.applied_actions_list)))
    # print('number of steps: {}'.format(t.applied_actions_list))
    # print('current Transform: \n{}'.format(t.T))
    # print('goal Transform: \n{}'.format(t.T_g))

    train_x = train_x[:, :, :, np.newaxis]
    train_y = train_y[:, :, np.newaxis]

    return train_x, train_y, t

@tf.function
def train_step(images, labels):
    with tf.GradientTape() as tape:
        tape.watch(labels)
        predictions = model(images)
        loss = loss_object(labels, predictions)
    gradients = tape.gradient(loss, model.trainable_variables)
    optimizer.apply_gradients(zip(gradients, model.trainable_variables))

    train_loss(loss)

def test_step(n_epidoes = 100, discrete=True, max_steps=100):
    success = 0
    success_steps = []
    for i in range(n_epidoes):
        step = 0
        test_x, test_y, test_t = generate_training_data()
        test_t.T_mov = test_t.T_start
        while True:
            img_diff = np.expand_dims(test_t.return_diff_image(), axis=3)
            model_prediction = np.array(model(img_diff))

            if discrete:
                test_t.apply_action_discrete(np.argmax(model_prediction))  # action with highest q-value
            else:
                model_prediction = np.array(tf.keras.activations.softmax(tf.convert_to_tensor(model_prediction)))
                model_prediction[0, 0] -= min(model_prediction[0, 0], model_prediction[0, 1])
                model_prediction[0, 1] -= min(model_prediction[0, 0], model_prediction[0, 1])
                model_prediction[0, 2] -= min(model_prediction[0, 2], model_prediction[0, 3])
                model_prediction[0, 3] -= min(model_prediction[0, 2], model_prediction[0, 3])
                model_prediction[0, 4] -= min(model_prediction[0, 4], model_prediction[0, 5])
                model_prediction[0, 5] -= min(model_prediction[0, 4], model_prediction[0, 5])
                # scale vector to length of 1
                model_prediction = model_prediction / np.sum(model_prediction)
                test_t.apply_action_continous(model_prediction)


            step += 1
            if test_t.done():
                success += 1
                success_steps.append(step)
                break
            if step > max_steps:
                break
    if len(success_steps) > 0:
        print('(mean / max) number of steps to finish successfully: {} / {}'.format(sum(success_steps) / len(success_steps), max(success_steps)))

    return (success*1.0) / (n_epidoes*1.0)


current_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
train_log_dir = 'logs/gradient_tape/' + current_time + '/train'
# test_log_dir = 'logs/gradient_tape/' + current_time + '/test'
train_summary_writer = tf.summary.create_file_writer(train_log_dir)
# test_summary_writer = tf.summary.create_file_writer(test_log_dir)


EPOCHS = 10000

for epoch in range(EPOCHS):

    train_x, train_y, _ = generate_training_data()
    train_step(train_x, train_y)

    # test_accuracy = np.random.rand()

    test_accuracy_discrete = test_step(n_epidoes=10, discrete=True)
    test_accuracy_continous = test_step(n_epidoes=10, discrete=False)

    with train_summary_writer.as_default():
        tf.summary.scalar('training loss', train_loss.result(), step=epoch)
        tf.summary.scalar('accuracy (discrete actions)', test_accuracy_discrete, step=epoch)
        tf.summary.scalar('accuracy (continous actions)', test_accuracy_continous, step=epoch)


    template = 'Epoch {}, Loss: {}, acc d: {}, acc c: {}'
    print(template.format(epoch + 1, train_loss.result(), test_accuracy_discrete, test_accuracy_continous))

    # Reset the metrics for the next epoch
    train_loss.reset_states()

pass
# test network
test_t = rigid_2d(
    img,
    np.random.rand() * 60 - 30,
    np.random.rand() * 60 - 30,
    np.random.rand() * 60 - 30
)
test_t = rigid_2d(
    img,
    np.random.rand() * 20 - 10,
    np.random.rand() * 20 - 10,
    np.random.rand() * 20 - 10,
    np.random.rand() * 20 - 10,
    np.random.rand() * 20 - 10,
    np.random.rand() * 20 - 10
)
step = 0
continous_action = False
while not test_t.done() and step < 100:
    img_diff = np.expand_dims(test_t.return_diff_image(), axis=3)
    model_prediction = np.array(model(img_diff))
    if continous_action:
        test_t.apply_action_continous(np.array(tf.keras.activations.softmax(tf.convert_to_tensor(model_prediction))))
    else:
        test_t.apply_action_discrete(np.argmax(model_prediction)) # action from model prediction

        # best_action, _ = test_t.return_action_with_lowest_next_loss(test_t.T_mov)
        # print('step: {}, best a: {}, pred: {}'.format(step, best_action, action_with_highest_q))
        # test_t.apply_action(best_action)
    step += 1


pass


n_states = len(test_t.transform_list)
array = np.zeros(shape=(n_states, 128, 128))
array_diff = np.zeros(shape=(n_states, 128, 128))
for i in range(n_states):
    test_t.T_mov = test_t.transform_list[i]
    array[i,:,:] = np.asarray(test_t.return_transformed_image())
    array_diff[i,:,:] = np.asarray(test_t.return_groud_truth_image()) / 255.0 - np.asarray(test_t.return_transformed_image(test_t.T_mov)) / 255.0


class IndexTracker(object):
    def __init__(self, ax, img_moving, title_info, img_diff):
        self.img_diff = img_diff
        self.title_info = title_info
        self.ax = ax[1]
        # ax.set_title('use scroll wheel to navigate images')

        self.img_moving = img_moving
        self.slices, rows, cols = img_moving.shape
        self.ind = 0

        self.im = ax[1].imshow(self.img_moving[self.ind, :, :])
        self.im_diff = ax[2].imshow(self.img_diff[self.ind, :, :])
        self.update()

    def onscroll(self, event):
        if event.button == 'up':
            self.ind = (self.ind + 1) % self.slices
        else:
            self.ind = (self.ind - 1) % self.slices

        self.update()

    def update(self):
        self.im.set_data(self.img_moving[self.ind, :, :])
        self.ax.set_ylabel('slice %s' % self.ind)

        self.im_diff.set_data(self.img_diff[self.ind, :, :])
        self.ax.set_ylabel('slice {}'.format(self.ind))


        self.ax.set_title(self.title_info.format(
            'Moving Image {}/{}'.format(self.ind, self.slices-1),
            str(self.img_moving[self.ind, :, :].shape),
            np.around(np.min(self.img_moving[self.ind, :, :]),2),
            np.around(np.max(self.img_moving[self.ind, :, :]),2)
        ))

        ax[2].set_title(self.title_info.format(
            'Difference Image {}/{}'.format(self.ind, self.slices-1),
            str(self.img_diff[self.ind, :, :].shape),
            np.around(np.min(self.img_diff[self.ind, :, :]),2),
            np.around(np.max(self.img_diff[self.ind, :, :]),2)
        ))
        self.im_diff.axes.figure.canvas.draw()
        self.im.axes.figure.canvas.draw()


title_info = '{}\nshape: {} - min/max: ({}, {})'
fig, ax = plt.subplots(1, 3,figsize=(15,8))
tracker = IndexTracker(ax, array, title_info, array_diff)
fig.canvas.mpl_connect('scroll_event', tracker.onscroll)

image = test_t.return_groud_truth_image()
ax[0].imshow(test_t.return_groud_truth_image())
ax[0].set_title(title_info.format(
    'Fixed Image',
    str(image.size),
    np.min(image),
    np.max(image)
))

ax[0].axis('off')
ax[1].axis('off')
ax[2].axis('off')

plt.show()


