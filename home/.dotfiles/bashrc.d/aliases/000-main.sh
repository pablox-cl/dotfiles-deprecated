# 000-main.sh

# Thanks ArchWiki: https://wiki.archlinux.org/index.php/Core_Utilities
# and Revans from Bash-it: https://github.com/revans/bash-it

# changing directory to the project dir
function c {
    cd ${PROJECT_DIR}/$1;
}

# ls
eval $(dircolors -b)
alias sl='ls'                       # errare humanum est
alias ls='ls -hF --color=always'    # color, human readable and classify symbols
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'                    # detailed list...
alias la='ll -A'                    # ... and hidden files
alias lx='ll -BX'                   # sort by extension
alias lz='ll -S'                    # sort by size
alias lt='ll -t'                    # sort by date
alias lm='la | more'
alias lg='ls -G'                    # compact view

# lazy guy
alias _='sudo'
alias cls='clear'                   # dos ftw
alias q='exit'
alias rb='ruby'
alias md='mkdir -p'
alias rdir='rmdir'
alias e='gvim'

# push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# modified commands
if [ -x "$(which colordiff)" ]; then
  alias diff='colordiff'              # requires colordiff package
fi
alias grep='grep -i --color=auto'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias du1='du --max-depth=1'
alias da='date "+%A, %B %d, %Y [%T]"'
alias vim='vim -p'
alias .='pwd'
alias ..='cd ..'                    # go up one directory...
alias ...='cd ../..'                # two...
alias ....='cd ../../..'            # three...
alias -- -='cd -'                   # go back to the last directory

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
alias h='history | grep $1'           # requires an argument
alias openports='netstat --all --numeric --programs --inet'
alias pg='ps -Af | grep $1'           # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)

function alias-help() {
cat << EOF

    ## Aliases included in this bundle

    # List aliases
    ls = ls -hF --color=always
    lr = ls -R                      # recursive
    ll = ls -l                      # detailed list...
    la = ll -A                      # ... and hidden files
    lx = ll -BX                     # sort by extension
    lz = ll -S                      # sort by size
    lt = ll -t                      # sort by date
    lm = la | more
    lg = ls -G'                     # compact view

    # I'm a little lazy
    _     = sudo
    cls   = clear                     # dos ftw
    q     = exit
    rb    = ruby
    md    = mkdir -p
    rdir  = rmdir
    pu    = pushd
    po    = popd

    # Modified commands
    diff  = colordiff               # only works if colordiff is installed
    grep  = grep -i --color=auto
    df    = df -h
    du    = du -c -h                # disk usage for humans
    mkdir = mkdir -p -v
    nano  = nano -w                 # disable wrapping of long lines
    ping  = ping -c 5
    du1   = du --max-depth=1        # disk usage, just the working dir
    da    = date "+%A, %B %d, %Y [%T]
    vim   = vim -p
    .     = pwd
    ..    = cd ..                   # go up one directory...
    ...   = cd ../..                # two...
    ....  = cd ../../..             # three...
    -     = cd -                    # go back to the last directory

    # Security measures (disabled by default)
    rm = rm -i
    cp = cp -i
    mv = mv -i
    ln = ln -i

    chown = chown --preserve-root
    chmod = chmod --preserve-root
    chgrp = chgrp --preserve-root

    # Some stuff that has to be run as root
    scat   = sudo cat
    svim   = sudo vim
    root   = sudo su
    reboot = sudo reboot
    halt   = sudo halt
    update = sudo pacman -Su
    netcfg = sudo netcfg2

    # Some new commands
    h         = history | grep $1   # requires an argument
    openports = netstat --all --numeric --programs --inet
    pg        = ps -Af | grep $1    # requires an argument (note: /usr/bin/pg is installed by the util-linux)

EOF
}
