#!/usr/bin/env bash
# Minimal Bash prompt: username + $ in green

# \[\033[0;32m\] → green color
# \[\033[0m\]    → reset color

PS1="\[\033[0;32m\]\u \$ \[\033[0m\]"

