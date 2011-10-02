#!/bin/bash
#
# rails.aliases.bash
#
# Another bash-it ripoff
# https://github.com/revans/bash-it

# Rails Commands
alias r='rails'
alias rg='rails g'
alias rs='rails s'
alias rc='rails c'
alias rn='rails new'
alias rdb='rails dbconsole'
alias rp='rails plugin'
alias ra='rails application'
alias rd='rails destroy'
alias dbm='rake db:migrate'

alias ss='script/server'
alias ts="thin start"     # thin server
alias sc='script/console'
alias restartapp='touch tmp/restart.txt'
alias restart='touch tmp/restart.txt'  # restart passenger
alias devlog='tail -f log/development.log'
alias taild='tail -f log/development.log' # tail dev log

function rails-help() {
cat << EOF
    Rails Aliases Usage

    r           = rails
    rg          = rails generate
    rs/ss       = rails server
    ts          = thin server
    rc/sc       = rails console
    rn          = rails new
    rdb         = rails dbconsole
    rp          = rails plugin
    ra          = rails application
    rd          = rails destroy
    restartapp  = touch tmp/restart.txt
    restart     = touch tmp/restart.txt
    devlog      = tail -f log/development.log
    taild       = tail -f log/development.log

EOF
}
