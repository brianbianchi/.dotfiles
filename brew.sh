#!/usr/bin/env bash

packages=(
    automake            # build tool for generating Makefiles
    binutils            # GNU binary utilities (objdump, nm, etc.)
    ffmpeg              # audio/video converter and streaming tool
    gcc                 # GNU C/C++ compiler
    golang              # Go programming language
    htop                # interactive process viewer
    jandedobbeleer/oh-my-posh/oh-my-posh # cross-shell prompt theme engine
    neovim              # text editor
    nmap                # network scanner and security tool
    node                # JavaScript runtime
    pyenv               # Python version manager
    ruby                # Ruby programming language
    stow                # symlink manager for dotfiles
    tmux                # terminal multiplexer
    tree                # directory tree viewer
    wget                # file downloader
    yt-dlp              # YouTube and media downloader
    zsh-autosuggestions # fish-like autosuggestions for zsh
    zsh-syntax-highlighting # syntax highlighting for zsh
)

apps=(
    discord             # voice, video, and text chat
    docker              # containerization platform
    firefox             # web browser
    font-jetbrains-mono # monospace font for developers
    font-inconsolata-nerd-font # Inconsolata with Nerd Font icons
    google-chrome       # web browser
    prince              # HTML to PDF converter
    rectangle           # window snapping and management
    slack               # team messaging
    transmission        # BitTorrent client
    visual-studio-code  # code editor
    vlc                 # media player
)

echo "Installing packages..."
for package in "${packages[@]}"; do
    brew install "$package"
done

echo "Installing applications..."
for app in "${apps[@]}"; do
    brew install --cask "$app"
done
