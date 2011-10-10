# Symlinks every file of the dotfiles directory after making sure that
# a backup is created first

# Get a list of every *file* on dotfiles directory and removes its path
files=$( find -maxdepth 1 -type f | grep -vE "(.bash$|.sh$|Rakefile|~$)" | xargs -I {} basename {} ./)

echo "Backing up your files..."
for file in $files; do
  f="${HOME}/.${file}"                   # ~/.bashrc
  if [ -e $f ]; then
    mv -v "${f}" "${f}".old              # backup old files
  fi
  ln -sv "${PWD}/${file}" "${f}"
done
