import matplotlib.pyplot as plt
import numpy as np

def remove_keymap_conflicts(new_keys_set):
    for prop in plt.rcParams:
        if prop.startswith('keymap.'):
            keys = plt.rcParams[prop]
            remove_list = set(keys) & new_keys_set
            for key in remove_list:
                keys.remove(key)

def standard_viewer(img_1, img_2):
    # np.swapaxes(img_1, 0, 1)
    # np.swapaxes(img_2, 1, 2)
    fig, axs = plt.subplots(2, 3, figsize=(8, 8))

    axs[0, 0].imshow(img_1[int(img_1.shape[0] / 2), :, :])
    axs[0, 1].imshow(img_1[:, int(img_1.shape[1] / 2), :])
    axs[0, 2].imshow(img_1[:, :, int(img_1.shape[2] / 2)])

    axs[1, 0].imshow(img_2[int(img_2.shape[0] / 2), :, :])
    axs[1, 1].imshow(img_2[:, int(img_2.shape[1] / 2), :])
    axs[1, 2].imshow(img_2[:, :, int(img_2.shape[2] / 2)])


def multi_slice_viewer(volume):
    remove_keymap_conflicts({'j', 'k', 'u', 'i'})
    fig, ax = plt.subplots()
    ax.volume = volume
    ax.index = volume.shape[1] // 2
    ax.imshow(volume[:,ax.index, :])
    fig.canvas.mpl_connect('key_press_event', process_key)

def process_key(event):
    fig = event.canvas.figure
    ax = fig.axes[0]
    if event.key == 'j':
        previous_slice(ax)
    elif event.key == 'k':
        next_slice(ax)
    elif event.key == 'u':
        previous_slice(ax)
        previous_slice(ax)
        previous_slice(ax)
        previous_slice(ax)
        previous_slice(ax)
    elif event.key == 'i':
        next_slice(ax)
        next_slice(ax)
        next_slice(ax)
        next_slice(ax)
        next_slice(ax)
    fig.canvas.draw()

def previous_slice(ax):
    volume = ax.volume
    ax.index = (ax.index - 1) % volume.shape[1]  # wrap around using %
    ax.images[0].set_array(volume[:, ax.index, :])

def next_slice(ax):
    volume = ax.volume
    ax.index = (ax.index + 1) % volume.shape[1]
    ax.images[0].set_array(volume[:, ax.index, :])
