import numpy as np
from Environment import Environment
from Agent import Agent


env = Environment()
agent = Agent(n_actions=4)

env.show_img()

n_steps = 10

for step in range(n_steps):
    # let the agent see the current state of the environment
    agent.observe_state(env.state)

    # let the agent choose an action
    current_action = agent.choose_random_action()

    # apply the action to the environment
    reward, state = env.step(current_action)

    # give reward to the agent
    agent.receive_reward()
