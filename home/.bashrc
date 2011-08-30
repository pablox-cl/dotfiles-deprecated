# If not running interactively, don't do anything
[[ $- != *i* ]] && return

files=$(ls ~/.bashrc.d/private/*.sh ~/.bashrc.d/*.sh 2>/dev/null)
    for file in ${files}; do
        source ${file}
done