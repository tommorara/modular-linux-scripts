#!/usr/bin/env bash
# Modular ALX aliases and navigation functions

# Detect hidden or visible ALX directory
if [ -d "$HOME/alx" ]; then
    ALX_BASE="$HOME/alx"
elif [ -d "$HOME/.alx" ]; then
    ALX_BASE="$HOME/.alx"
else
    echo "ALX directory not found" >&2
    return 1
fi

# Clear terminal
cl() { clear; }

# ALX project shortcuts
lx()   { cd "$ALX_BASE"; }
ab()   { cd "$ALX_BASE/alx-backend"; }
abj()  { cd "$ALX_BASE/alx-backend-javascript"; }
hlp()  { cd "$ALX_BASE/alx-higher_level_programming"; }
abu()  { cd "$ALX_BASE/alx-backend-user-data"; }
abs()  { cd "$ALX_BASE/alx-backend-storage"; }
afm()  { cd "$ALX_BASE/alx-files_manager"; }
abi()  { cd "$ALX_BASE/alx-interview"; }
av()   { cd "$ALX_BASE/AirBnB_clone_v2"; }
prf()  { cd "$ALX_BASE/printf"; }
sed()  { cd "$ALX_BASE/alx-system_engineering-devops"; }
saf()  { cd "$ALX_BASE/safisha_laundry"; }
uew()  { cd "$ALX_BASE/urban-elements-workshop"; }
mf()   { cd "$ALX_BASE/modern-furniture"; }
sal()  { cd "$ALX_BASE/sorting_algorithms"; }
bin()  { cd "$ALX_BASE/binary_trees"; }
sml()  { cd "$ALX_BASE/simple_shell"; }
mty()  { cd "$ALX_BASE/monty"; }
air()  { cd "$ALX_BASE/AirBnB_clone"; }
cfg()  { cd "$ALX_BASE/config-sync"; }

# Script aliases
alias tx="$HOME/.modular-linux-scripts/bin/tmux/session-manager.sh"

# Navigation function for numbered ALX projects
go() {
    local cmd="$1 && cd 0x$2-*"

    if eval "$cmd" 2>/dev/null; then
        pwd
        return 0
    fi

    if eval "$1 && ls -d 0x$2-*/ 2>/dev/null"; then
        return 1
    else
        echo "no such directory"
        return 1
    fi
}

