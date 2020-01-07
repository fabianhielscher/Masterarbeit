from __future__ import absolute_import, division, print_function, unicode_literals
import numpy as np
import random
import tensorflow as tf
from tensorflow.keras.layers import Dense, Flatten, Conv2D, MaxPool2D
from tensorflow.keras import Model

from Environment import Environment
from Agent import Agent
from Transformation import rigid_2d
from PIL import Image
import matplotlib.pyplot as plt


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
eps = 0.8



model = MyModel()

loss_object = tf.keras.losses.MeanSquaredError()
optimizer = tf.keras.optimizers.Adam(learning_rate=0.00006, beta_1=0.7)
train_loss = tf.keras.metrics.Mean(name='train_loss')
test_loss = tf.keras.metrics.Mean(name='test_loss')

# train_accuracy = tf.keras.metrics.SparseCategoricalAccuracy(name='train_accuracy')
# test_accuracy = tf.keras.metrics.SparseCategoricalAccuracy(name='test_accuracy')

def generate_training_data():
    # t = rigid_2d(
    #     img,
    #     10,
    #     10,
    #     10
    # )
    t = rigid_2d(
        img,
        np.random.rand() * 60 - 30,
        np.random.rand() * 60 - 30,
        np.random.rand() * 60 - 30
    )
    t = rigid_2d(
        img,
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

                q = t.get_q_value(t.T, n_steps, action)
                q_array[0, action] = q

            # apply best action
            best_action, _ = t.return_action_with_lowest_next_loss(t.T)
            t.apply_action(best_action)

            # concat new q-array
            train_y = np.vstack([train_y, q_array])

            n_steps += 1


    # print('number of steps: {}'.format(n_steps))
    # print('number of steps: {}'.format(len(t.applied_actions_list)))
    # print('number of steps: {}'.format(t.applied_actions_list))
    # print('current Transform: \n{}'.format(t.T))
    # print('goal Transform: \n{}'.format(t.T_g))

    # train_x = np.ones((32, 128, 128, 1))
    # train_y = np.ones((32, 6, 1))
    # train_x = np.expand_dims(train_x, axis=3)
    train_x = train_x[:, :, :, np.newaxis]
    train_y = train_y[:, :, np.newaxis]
    # train_y = np.expand_dims(train_y, axis=3)

    # normalize
    return train_x, train_y, t

@tf.function
def train_step(images, labels):
    with tf.GradientTape() as tape:
        predictions = model(images)
        loss = loss_object(labels, predictions)
    gradients = tape.gradient(loss, model.trainable_variables)
    optimizer.apply_gradients(zip(gradients, model.trainable_variables))

    train_loss(loss)

def test_step(n_epidoes = 100):
    success = 0
    step = 0
    for i in range(n_epidoes):
        test_x, test_y, test_t = generate_training_data()
        test_t.T = test_t.T_start
        while True:
            img_diff = np.expand_dims(test_t.return_diff_image(), axis=3)
            model_prediction = np.array(model(img_diff))
            test_t.apply_action_continous(np.array(tf.keras.activations.softmax(tf.convert_to_tensor(model_prediction))))
            # test_t.apply_action(np.argmax(model_prediction))  # action with highest q-value


            step += 1
            if test_t.done():
                success += 1
                break
            if step > 100:
                break
    return (success*1.0) / (n_epidoes*1.0)
EPOCHS = 10

for epoch in range(EPOCHS):
    # train_step(images, labels)

    # train_x = np.ones((32, 128, 128, 1))
    # train_y = np.ones((32, 6, 1))
    train_x, train_y, _ = generate_training_data()
    train_step(train_x, train_y)
    test_accuracy = test_step(n_epidoes=1)

    template = 'Epoch {}, Loss: {}, Test Loss: {}'
    print(template.format(epoch+1, train_loss.result(), test_accuracy))

    # Reset the metrics for the next epoch
    train_loss.reset_states()
    # test_loss.reset_states()

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
    0,
    0,
    10
)
step = 0
continous_action = True
while not test_t.done() and step < 100:
    img_diff = np.expand_dims(test_t.return_diff_image(), axis=3)
    model_prediction = np.array(model(img_diff))
    if continous_action:
        test_t.apply_action_continous(np.array(tf.keras.activations.softmax(tf.convert_to_tensor(model_prediction))))
    else:
        test_t.apply_action(np.argmax(model_prediction)) # action with highest q-value
    step += 1

    # best_action, _ = test_t.return_action_with_lowest_next_loss(test_t.T)
    # print('step: {}, best a: {}, pred: {}'.format(step, best_action, action_with_highest_q))
    # test_t.apply_action(action_with_highest_q)
pass


n_states = len(test_t.transform_list)
array = np.zeros(shape=(n_states, 128, 128))
array_diff = np.zeros(shape=(n_states, 128, 128))
for i in range(n_states):
    test_t.T = test_t.transform_list[i]
    array[i,:,:] = np.asarray(test_t.return_transformed_image())
    array_diff[i,:,:] = np.asarray(test_t.return_groud_truth_image()) / 255.0 - np.asarray(test_t.return_transformed_image(test_t.T)) / 255.0


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
            print('up')
            self.ind = (self.ind + 1) % self.slices
        else:
            print('down')
            self.ind = (self.ind - 1) % self.slices
        print(self.ind)

        self.update()

    def update(self):
        print(self.ind)
        self.im.set_data(self.img_moving[self.ind, :, :])
        self.ax.set_ylabel('slice %s' % self.ind)

        self.im_diff.set_data(self.img_diff[self.ind, :, :])
        self.ax.set_ylabel('slice {}'.format(self.ind))


        print(self.ind)
        self.ax.set_title(self.title_info.format(
            'Moving Image {}/{}'.format(self.ind, self.slices-1),
            str(self.img_moving[self.ind, :, :].shape),
            np.min(self.img_moving[self.ind, :, :]),
            np.max(self.img_moving[self.ind, :, :])
        ))

        ax[2].set_title(self.title_info.format(
            'Difference Image {}/{}'.format(self.ind, self.slices-1),
            str(self.img_diff[self.ind, :, :].shape),
            np.min(self.img_diff[self.ind, :, :]),
            np.max(self.img_diff[self.ind, :, :])
        ))
        self.im_diff.axes.figure.canvas.draw()
        self.im.axes.figure.canvas.draw()
        print(self.ind)


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
# ax[1].axis('off')
ax[2].axis('off')

plt.show()


