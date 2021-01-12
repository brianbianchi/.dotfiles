#!/usr/bin/env bash
############################
# This script creates symlinks between dotfiles in ${homedir}/dotfiles
# and the home directory, and installs homebrew packages
############################

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# list of files/folders to symlink in ${homedir}
files="bashrc gitconfig .gitignore_global vimrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# run homebrew script
./brew.sh

# ~/.bashrc to ~/.zshrc
echo "[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'" >> ~/.zshrc
