import numpy as np
import random


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
