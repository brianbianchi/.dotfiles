#!/usr/bin/env bash
set -euo pipefail
############################
# Symlink dotfiles and install packages based on OS.
############################

dotfiledir="$HOME/.dotfiles"
files=".gitconfig .gitignore_global .vimrc .zshrc"

echo "Creating symlinks for dotfiles..."
for file in $files; do
    src="$dotfiledir/$file"
    dest="$HOME/$file"
    if [ ! -e "$src" ]; then
        echo "Warning: $src does not exist, skipping."
        continue
    fi
    echo "Creating symlink: $dest -> $src"
    ln -sf "$src" "$dest"
done

install_packages_mac() {
    if [ -x ./brew.sh ]; then
        echo "Detected macOS. Running brew.sh."
        $dotfiledir/brew.sh
    else
        echo "brew.sh not found or not executable!"
        exit 1
    fi
}

install_packages_ubuntu() {
    if [ -x ./apt.sh ]; then
        echo "Detected Ubuntu. Running apt.sh."
        $dotfiledir/apt.sh
    else
        echo "apt.sh not found or not executable!"
        exit 1
    fi
}

echo "Detecting OS..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    install_packages_mac
elif [ -f /etc/os-release ]; then
    . /etc/os-release
    if [[ "$ID" == "ubuntu" ]]; then
        install_packages_ubuntu
    else
        echo "Unsupported Linux distribution: $ID"
        exit 1
    fi
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi
