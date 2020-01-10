import numpy as np
from PIL import Image
import tensorflow as tf
import math
import matplotlib.pyplot as plt

class rigid_2d:
    def __init__(self, img,
                 deg_fix=0, tx_fix=0, ty_fix=0,
                 deg_mov=0, tx_mov=0, ty_mov=0
                 ):
        self.eps = 0.5
        self.n_actions = 6
        self.img_g = img
        self.img = img
        self.w = img.width
        self.h = img.height


        sin_fix = math.sin(math.radians(deg_fix))
        cos_fix = math.cos(math.radians(deg_fix))
        sin_mov = math.sin(math.radians(deg_mov))
        cos_mov = math.cos(math.radians(deg_mov))

        self.T_fix = np.array([
            [cos_fix, -sin_fix, tx_fix],
            [sin_fix, cos_fix, ty_fix],
            [0, 0, 1]
        ])

        self.T_mov = np.array([
            [cos_mov, -sin_mov, tx_mov],
            [sin_mov, cos_mov, ty_mov],
            [0, 0, 1]
        ])

        self.T_start = np.array([
            [cos_mov, -sin_mov, tx_mov],
            [sin_mov, cos_mov, ty_mov],
            [0, 0, 1]
        ])
        self.applied_actions_list = []
        self.reward_list = []
        self.q_list = []
        self.transform_list = []
        self.transform_list.append(self.T_mov)

        # Transforms
        self.rot_pos = np.array([
            [math.cos(math.radians(1)), -math.sin(math.radians(1)), 0],
            [math.sin(math.radians(1)), math.cos(math.radians(1)), 0],
            [0, 0, 1]
        ])
        self.rot_neg = np.array([
            [math.cos(math.radians(-1)), -math.sin(math.radians(-1)), 0],
            [math.sin(math.radians(-1)), math.cos(math.radians(-1)), 0],
            [0, 0, 1]
        ])
        self.trans_x_pos = np.array([
            [1, 0, 1],
            [0, 1, 0],
            [0, 0, 1]
        ])
        self.trans_x_neg = np.array([
            [1, 0, -1],
            [0, 1, 0],
            [0, 0, 1]
        ])
        self.trans_y_pos = np.array([
            [1, 0, 0],
            [0, 1, 1],
            [0, 0, 1]
        ])
        self.trans_y_neg = np.array([
            [1, 0, 0],
            [0, 1, -1],
            [0, 0, 1]
        ])

    def return_transformed_image(self, T=None):

        T_center = np.array([
            [1, 0, -self.w / 2],
            [0, 1, -self.h / 2],
            [0, 0, 1]
        ])

        T_recenter = np.array([
            [1, 0, self.w / 2],
            [0, 1, self.h / 2],
            [0, 0, 1]
        ])
        if T is None:
            T_inv = np.linalg.inv(T_recenter @ self.T_mov @ T_center)
        else:
            T_inv = np.linalg.inv(T_recenter @ T @ T_center)
        return self.img.transform((self.w, self.h), Image.AFFINE, data=T_inv.flatten()[:6],
                                  resample=Image.NEAREST)
    def return_groud_truth_image(self):

        T_center = np.array([
            [1, 0, -self.w / 2],
            [0, 1, -self.h / 2],
            [0, 0, 1]
        ])

        T_recenter = np.array([
            [1, 0, self.w / 2],
            [0, 1, self.h / 2],
            [0, 0, 1]
        ])

        T_inv = np.linalg.inv(T_recenter @ self.T_fix @ T_center)
        return self.img.transform((self.w, self.h), Image.AFFINE, data=T_inv.flatten()[:6],
                                  resample=Image.NEAREST)

    def get_next_transform(self, n, T):
        if n == 0:
            return np.matmul(T, self.rot_pos)
        elif n == 1:
            return np.matmul(T, self.rot_neg)
        elif n == 2:
            return np.matmul(T, self.trans_x_pos)
        elif n == 3:
            return np.matmul(T, self.trans_x_neg)
        elif n == 4:
            return np.matmul(T, self.trans_y_pos)
        elif n == 5:
            return np.matmul(T, self.trans_y_neg)

    def calculate_q_values(self):
        n_applied_actions = len(self.reward_list)
        gamma = 0.9
        self.q_list = [None]*n_applied_actions
        final_reward = 10
        for i in reversed(range(n_applied_actions)):
            if i == n_applied_actions-1:
                self.q_list[i] = self.reward_list[i] + final_reward
            else:
                self.q_list[i] = self.reward_list[i] + gamma * self.q_list[i+1]
        pass

    def get_best_action_next_T_and_immediate_reward(self, a, T, step):
        pass

    def get_q_value(self, T, step, action=None):

        if action is None:
            # choose best action
            chosen_action, _ = self.return_action_with_lowest_next_loss(T)
        else:
            chosen_action = action

        distance_before_action = self.loss_with_transform(T)
        next_T = self.get_next_transform(chosen_action, T)
        distance_after_action = self.loss_with_transform(next_T)
        immediate_reward = distance_before_action - distance_after_action

        step += 1

        if self.done(next_T):
            return immediate_reward + 10
        else:
            return immediate_reward + 0.9 * self.get_q_value(next_T, step)


    def apply_action_discrete(self, n):
        self.applied_actions_list.append(n)
        distance_before_action =  np.linalg.norm(self.T_fix - self.T_mov)

        if n == 0:
            self.T_mov = np.matmul(self.T_mov, self.rot_pos)
        elif n == 1:
            self.T_mov = np.matmul(self.T_mov, self.rot_neg)
        elif n == 2:
            self.T_mov = np.matmul(self.T_mov, self.trans_x_pos)
        elif n == 3:
            self.T_mov = np.matmul(self.T_mov, self.trans_x_neg)
        elif n == 4:
            self.T_mov = np.matmul(self.T_mov, self.trans_y_pos)
        elif n == 5:
            self.T_mov = np.matmul(self.T_mov, self.trans_y_neg)

        distance_after_action = np.linalg.norm(self.T_fix - self.T_mov)
        self.reward_list.append(distance_before_action - distance_after_action)
        self.transform_list.append(self.T_mov)

    def apply_action_continous(self, array):
        # rot_pos
        # rot_neg
        # x+
        # x-
        # y+
        # y-
        deg = array[0,0] - array[0,1]
        x = array[0,2] - array[0,3]
        y = array[0,4] - array[0,5]
        sin = math.sin(math.radians(deg))
        cos = math.cos(math.radians(deg))

        self.T_mov = np.matmul(self.T_mov, np.array([
            [cos, -sin, x],
            [sin, cos, y],
            [0, 0, 1]
        ]))
        self.transform_list.append(self.T_mov)

    def loss_current(self):
        return np.linalg.norm(self.T_fix - self.T_mov)

    def loss_with_transform(self, T):
        return np.linalg.norm(self.T_fix - T)

    def loss(self, A):
        return np.linalg.norm(A)

    def return_action_with_lowest_next_loss(self, T):
        best_action = 0
        lowest_next_loss = np.inf
        for n in range(self.n_actions):
            next_loss = self.loss(self.T_fix - self.get_next_transform(n, T))
            if next_loss < lowest_next_loss:
                lowest_next_loss = next_loss
                best_action = n
        return best_action, lowest_next_loss

    def done(self, T=None, eps=True):

        if T is None:
            T = self.T_mov
        # check if there is a an action that minimizes distance
        current_loss = self.loss_with_transform(T)

        if eps:
            if current_loss < 0.8:
                return True
            else:
                return False
        else:

            for n in range(self.n_actions):
                next_loss = self.loss(self.T_fix - self.get_next_transform(n, T))
                if next_loss < current_loss:
                    return False
            return True

    def return_diff_image(self, expand_dim=True):
        img_current = np.asarray(self.return_transformed_image()) / 255
        img_ground_truth = np.asarray(self.return_groud_truth_image()) / 255

        img_diff = img_ground_truth - img_current

        if expand_dim:
            img_diff = np.expand_dims(img_diff, axis=0)

        return img_diff

    def return_success_rate(self):
        n_tries = 0
        while n_tries < 1:
            n_tries += 1
            test_t = rigid_2d(
                img,
                10,
                10,
                6
            )
            step = 0
            while True:
                img_diff = np.expand_dims(test_t.return_diff_image(), axis=3)
                model_prediction = np.array(model(img_diff))
                action_with_highest_q = np.argmax(model_prediction)
                best_action, _ = test_t.return_action_with_lowest_next_loss(test_t.T_mov)
                print('step: {}, best a: {}, pred: {}'.format(step, best_action, action_with_highest_q))
                # test_t.apply_action(action_with_highest_q)
                test_t.apply_action_discrete(best_action)
                step += 1
                if test_t.done():
                    success += 1
                    break
                if step > 100:
                    break
        print("tries: {}, success: {}".format(n_tries, success))
