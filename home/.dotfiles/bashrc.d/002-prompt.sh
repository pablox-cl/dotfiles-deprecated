# 002-prompt.sh
# Requires 001-colors.sh

# Show only the three last directories
PROMPT_DIRTRIM=3

PS1="${BWhite}[${BPurple}${History}${BWhite}:${BBlue}\w${BWhite}]${BGreen} ${User}${Color_Off} "

# A fancy alternative
# Thanks technical pickles: https://github.com/technicalpickles/dotpickles
# Note that I changed the variable names to coincide with the ones I provide
#PS1_LINE1="${IGreen}———————————————— macbook-pro \t ————————————————"
#PS1_LINE2="${IRed}\$(~/.rvm/bin/rvm-prompt)${Color_Off} in ${IYellow}\w${ICyan} \$(__git_ps1 '(%s) ')"
#PS1_LINE3="${IBlue}\$${Color_Off} "

#export  PS1="\n${PS1_LINE1}\n${PS1_LINE2}\n${PS1_LINE3}"
