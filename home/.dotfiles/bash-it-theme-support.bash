#!/bin/bash
#
# bash-it-theme-support.bash

# Located on lib/bash-it/themes
export BASH_THEME="bobby"

# Load colors and base stuff of the bash-it themes
for file in $( ls ~/.dotfiles/lib/bash-it/themes/*.bash ); do
  source $file
done

# Load the desired theme
source ~/.dotfiles/lib/bash-it/themes/${BASH_THEME}/${BASH_THEME}.theme.bash

# Prompt
export PS1=$PROMPT
