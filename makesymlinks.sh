#!/bin/bash
# set -euo pipefail

############################
# .makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory

# list of files/folders to symlink in homedir
read -d '' files << EOF
  Brewfile
  gemrc
  gitattributes
  gitconfig
  githelpers
  irbrc
  private
  tmux.conf
  tmuxp
  vim
  vimrc
  zlogin
  zlogout
  zprofile
  zshenv
  zshrc
  zsh
EOF

##########

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
  echo "Processing $file"
  echo "Creating symlink to $file in home directory."
  ln -sfn $dir/$file ~/.$file
done
