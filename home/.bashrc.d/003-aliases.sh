# 003-aliases.sh

# Thanks ArchWiki: https://wiki.archlinux.org/index.php/Core_Utilities
# and Revans from Bash-it: https://github.com/revans/bash-it

# ls
eval $(dircolors -b)
alias sl='ls'                       # errare humanum est
alias ls='ls -hF --color=always'    # color, human readable and classify symbols
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'                    # detailed list...
alias la='ll -A'                    # ... and hidden files
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
alias lg='ls -G'                    # compact view

# lazy guy
alias _='sudo'
alias c='clear'
alias cls='clear'                   # dos ftw
alias q='exit'
alias rb='ruby'
alias md='mkdir -p'
alias rd='rmdir'

# modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep -i --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias ..='cd ..'                    # go up one directory...
alias ...='cd ../..'                # two...
alias ....='cd ../../..'            # three...

# security measures (prompt to overwrite)
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
#alias ln='ln -i'
# or once before removing more than three files and when removing recursively
#alias rm='rm -I'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
    alias update='sudo pacman -Su'
    alias netcfg='sudo netcfg2'
fi

# new commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias h='history | grep $1'           # requires an argument
alias openports='netstat --all --numeric --programs --inet'
alias pg='ps -Af | grep $1'           # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)

