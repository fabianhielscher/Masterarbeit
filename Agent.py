from __future__ import absolute_import, division, print_function, unicode_literals
import numpy as np
import random

import tensorflow as tf

from tensorflow.keras.layers import Dense, Flatten, Conv2D, MaxPool2D
from tensorflow.keras import Model


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
        self.out = Dense(6, activation='softmax')

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


class Agent:
    def __init__(self, n_actions):
        self.action_lst = [n for n in range(n_actions)]
        self.state = None

    def observe_state(self, state):
        self.state = state

    def receive_reward(self, reward):
        pass

    def choose_random_action(self):
        assert self.state is not None
        action = random.randint(0, len(self.action_lst)-1)
        return self.action_lst[action]

    def check_if_episode_is_finished(self):
        return False

    def calculate_q_values(self):
        pass

    def train_network_with_gathered_states_and_q_values(self):
        pass

