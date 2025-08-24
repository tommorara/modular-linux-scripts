#!/usr/bin/env bash
# General navigation helpers for quickly moving around the filesystem

# Script aliases
# Tmux session manager
alias tx="$HOME/.modular-linux-scripts/bin/tmux/session-manager.sh"
alias mod="cd $HOME/.modular-linux-scripts"

# Tree view helpers
#ctbc() { tree -a -I '__pycache__|.git|.vscode' --dirsfirst | xclip -selection clipboard; }
#General
alias cl='clear'
alias tx='$HOME/bin/tmu'
alias py='python3.12'
alias xc='| xclip -selection clipboard'
alias env="python3 -m venv .venv && source .venv/bin/activate"
alias denv="deactivate"
alias tbc="tree -L 4 -I '__pycache__|node_modules|.git'"
alias ctbc="tree -a -I '__pycache__|.git|.vscode' --dirsfirst | xclip -selection clipboard"
alias mysql='mysql -u root -p'
alias gem='npx https://github.com/google-gemini/gemini-cli'
alias cpc='bash -c '\''xclip -selection clipboard < "$1"'\'' _'
#Edge browser (wsl)
edge() {
    if [ -z "$1" ]; then
        echo "Usage: edge <filename>"
        return 1
    fi
    local win_path
    win_path=$(wslpath -w "$1")
    "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" "$win_path"
}


