#!/bin/bash

set -e  # exit on failure

PACKAGES={
    firefox
    git
    hyprland
    waybar
    kitty
    fish
    swww
}

echo "Installing packages.."
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"
