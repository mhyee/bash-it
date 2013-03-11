#!/usr/bin/env bash

# append to bash_history if Terminal.app quits
shopt -s histappend

# Store commands on only one line
shopt -s cmdhist

# history handling
#
# ignore duplicates and commands that start with a space
# erase duplicates
export HISTCONTROL=ignoreboth:erasedups

# resize history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# timestamp history with date and time
export HISTTIMEFORMAT='%F %T '

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export AUTOFEATURE=true autotest

function rh {
  history | awk '{a[$4]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}
