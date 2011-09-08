#!/bin/bash
# 000-completions.sh

function complete_script() {
    complete -C ${BASHRCD}/completions/$1.completion.rb -o default $2
}

complete_script project c
complete_script rake rake
