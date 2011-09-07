#!/bin/bash
#
# git-aliases.sh
#
# From Bash-it
# https://github.com/revans/bash-it

alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'

alias gd='git diff | vim -R -'

#TODO
#case $OSTYPE in
#  linux*)
#    alias gd='git diff | vim -R -'
#    ;;
#  darwin*)
#    alias gd='git diff | mate'
#    ;;
#  darwin*)
#    alias gd='git diff'
#    ;;
#esac

function git-help() {
cat << EOF
Git Custom Aliases Usage

    gcl = git clone
    g = git
    get = git
    ga = git add
    gall = git add .
    gst/gs = git status
    gss = git status -s
    gl = git pull
    gup = git fetch && git rebase
    gp = git push
    gd = git diff | vim -R -
    gdv = git diff -w \"$@\" | vim -R -
    gc = git commit -v
    gca = git commit -v -a
    gci = git commit --interactive
    gb = git branch
    gba = git branch -a
    gcount = git shortlog -sn
    gcp = git cherry-pick
    gco = git checkout
    gexport = git git archive --format zip --output
    gdel = git branch -D
    gpo = git push origin
    gmu = git fetch origin -v; git fetch upstream -v; git merge upstream/master
    gll = git log --graph --pretty=oneline --abbrev-commit
EOF
}
