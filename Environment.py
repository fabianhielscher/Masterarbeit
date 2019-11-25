import numpy as np
import nibabel as nib
from Tools import multi_slice_viewer
from Tools import remove_keymap_conflicts
from Tools import standard_viewer

class State:
    def __init__(self):
        self.current_state = 0
        self.last_state = 0
        self.img_reference = np.array(nib.load('data/R2017025/bin_00.nii').dataobj)
        self.img_target = np.array(nib.load('data/R2017025/bin_02.nii').dataobj)

    def apply_action(self, action):
        # save last state
        self.last_state = self.current_state

        # perform action
        if action is 0:
            pass
        elif action is 1:
            pass
        elif action is 2:
            pass
        elif action is 3:
            pass
        else:
            print('Unknown action')

        # set new current state
        self.current_state = 1

    def return_reward(self):
        return 1


class Environment:
    def __init__(self):
        self.reward = 0
        self.finish = False
        self.state = State()
        self.n_applied_steps = 0

    def reset(self):
        # reset environment for new episode
        self.finish = False
        self.state = State()
        self.n_applied_steps = 0

    def step(self, action):
        # 1. apply action (state changes)
        self.state.apply_action(action)

        # 2. calculate reward for previous action
        self.reward = self.state.return_reward()

        # 3. return reward and state back to agent
        return self.reward, self.state

    def show_img(self):
        standard_viewer(self.state.img_reference, self.state.img_target)
        # multi_slice_viewer(self.state.img_reference)