#!/usr/bin/env bash

packages=()

echo "Installing packages..."
for package in "${packages[@]}"; do
    apt install "$package"
done