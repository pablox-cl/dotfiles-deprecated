# 000-env.sh

PATH=$PATH:${HOME}/bin
EDITOR="vim"
GREP_COLORS="1;33"
LESS="-R"
PROJECT_DIR="${HOME}/code"

export PATH EDITOR GREP_COLORS LESS PROJECT_DIR

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=20000

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth:erasedups

# Better completion with man & sudo
complete -cf sudo
complete -cf _
complete -cf man

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# No more beeps
xset -b
