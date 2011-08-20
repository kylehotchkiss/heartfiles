#!/bin/bash
##
## Kyle Hotchkiss' Bash Configuration
## Settings work in both OSX and Linux.
##

# ----------------- #
# Contextual Prompt #
# ----------------- #
if [ "$TERM" != "dumb" ]; then
 if [ "$SSH_CONNECTION" ]; then
  export PS1="\[\e[37m\]{ \[\e[0m\]♦  \[\e[1;33m\]\u \[\e[37m\]} \[\e[34m\]\W\[\e[0m\]: "
 else
  export PS1="\[\e[37m\]{ \[\e[0m\]★  \[\e[1;32m\]\u \[\e[37m\]} \[\e[34m\]\W\[\e[0m\]: "
 fi
 
 eval `dircolors ~/.dir_colors`
fi

# ---------------- #
# Coreutils in OSX #
# ---------------- #
PATH="/usr/local/bin:$PATH"


# Alias
alias ls='ls -hF --color'
