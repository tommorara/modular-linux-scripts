#!/bin/bash
set -euo pipefail

SESSION_NAME="Alx"

# Ensure tmux is installed
if ! command -v tmux >/dev/null 2>&1; then
  echo "tmux is not installed. Please install tmux first." >&2
  exit 1
fi

# If session already exists, attach and exit
if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  tmux attach -t "$SESSION_NAME"
  exit 0
fi

# Start a new detached session (single pane)
tmux new-session -d -s "$SESSION_NAME"

# Split into top and bottom panes (top: original top, bottom: original bottom)
tmux split-window -v -t "$SESSION_NAME"

# Swap them so that original bottom becomes top
tmux swap-pane -s "$SESSION_NAME:0.0" -t "$SESSION_NAME:0.1"

# Now split the (new) bottom pane—which was originally the top—horizontally into left/right
tmux select-pane -t "$SESSION_NAME:0.1"
tmux split-window -h -t "$SESSION_NAME"

# Focus the top pane (which is the original bottom single)
tmux select-pane -t "$SESSION_NAME:0.0"

# Attach to the session
tmux attach -t "$SESSION_NAME"
