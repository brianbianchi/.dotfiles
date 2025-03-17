#!/usr/bin/env bash

packages=(
    automake
    binutils
    ffmpeg
    gcc
    golang
    htop
    telnet
    neovim
    nmap
    node
    pyenv
    tmux
    tree
    wget
)

apps=(
    devtoys
    discord
    docker
    firefox
    font-jetbrains-mono
    google-chrome
    prince
    rectangle
    slack
    spotify
    transmission
    visual-studio-code
    vlc
)

echo "Installing packages..."
for package in "${packages[@]}"; do
    brew install "$package"
done

echo "Installing applications..."
for app in "${apps[@]}"; do
    brew install --cask "$app"
done