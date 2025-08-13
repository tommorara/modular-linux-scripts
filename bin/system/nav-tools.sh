#!/usr/bin/env bash
# General navigation helpers for quickly moving around the filesystem

# Clear terminal
cl() { clear; }

# Script aliases
# Tmux session manager
alias tx="$HOME/.modular-linux-scripts/bin/tmux/session-manager.sh"

# Tree view helpers
tbc()  { tree -a -I '__pycache__|.git|.vscode' --dirsfirst; }
ctbc() { tree -a -I '__pycache__|.git|.vscode' --dirsfirst | xclip -selection clipboard; }

