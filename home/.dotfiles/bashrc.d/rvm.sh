# rvm.sh

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
