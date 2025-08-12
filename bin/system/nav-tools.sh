#!/usr/bin/env bash
# Navigation helpers for quickly moving around the filesystem

# Clear terminal
alias cl='clear'

# ALX project shortcuts
alias lx="cd $HOME/alx"
alias ab='cd $HOME/alx/alx-backend'
alias abj='cd $HOME/alx/alx-backend-javascript'
alias hlp='cd $HOME/alx/alx-higher_level_programming'
alias abu='cd $HOME/alx/alx-backend-user-data'
alias abs='cd $HOME/alx/alx-backend-storage'
alias afm='cd $HOME/alx/alx-files_manager'
alias abi='cd $HOME/alx/alx-interview'
alias av="cd $HOME/alx/AirBnB_clone_v2"
alias prf="cd $HOME/alx/printf"
alias sed="cd $HOME/alx/alx-system_engineering-devops"
alias saf="cd $HOME/alx/safisha_laundry"
alias uew="cd $HOME/alx/urban-elements-workshop"
alias mf="cd $HOME/alx/modern-furniture"
alias sal="cd $HOME/alx/sorting_algorithms"
alias bin="cd $HOME/alx/binary_trees"
alias sml="cd $HOME/alx/simple_shell"
alias mty="cd $HOME/alx/monty"
alias air="cd $HOME/alx/AirBnB_clone"
alias cfg="cd $HOME/alx/config-sync"

# Tree view helpers
alias tbc="tree -a -I '__pycache__|.git|.vscode' --dirsfirst"
alias ctbc="tree -a -I '__pycache__|.git|.vscode' --dirsfirst | xclip -selection clipboard"

# Navigation function for numbered ALX projects
go() {
    local cmd="$1 && cd 0x$2-*"

    # Try to run the alias and cd into the target
    if eval "$cmd" 2>/dev/null; then
        pwd
        return 0
    fi

    # If cd failed, check if matching directories exist
    if eval "$1 && ls -d 0x$2-*/ 2>/dev/null"; then
        return 1
    else
        echo "no such directory"
        return 1
    fi
}

