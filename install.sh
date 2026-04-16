#!/usr/bin/env bash
set -euo pipefail
############################
# Install packages and stow dotfiles.
############################

dotfiledir="$HOME/.dotfiles"
packages=(git vim zsh ghostty ohmyposh tmux)

install_packages_mac() {
    if [ -x "$dotfiledir/brew.sh" ]; then
        echo "Detected macOS. Running brew.sh."
        "$dotfiledir/brew.sh"
    else
        echo "brew.sh not found or not executable!"
        exit 1
    fi
}

echo "Detecting OS..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    install_packages_mac
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

echo "Stowing dotfiles..."
cd "$dotfiledir"
for pkg in "${packages[@]}"; do
    if [ -d "$pkg" ]; then
        echo "  stow $pkg"
        stow --restow --target="$HOME" "$pkg"
    else
        echo "  Warning: package directory '$pkg' not found, skipping."
    fi
done

echo "Done."
