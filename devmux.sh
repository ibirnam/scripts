#!/bin/bash
# Starts a new tmux session with a horizontal split
# with about 75% on top with 25% on the bottom split vertically

# the 22 comes from splitting the window in half twice and deleting
# the second section to make the top one larger while leaving a
# smaller area for a prompt and task runner window at the bottom
tmux new-session -d 'zsh'
tmux split-window -v -p 22 'zsh'
tmux split-window -h 'zsh'
tmux -2 attach-session -d
