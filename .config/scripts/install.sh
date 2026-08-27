#!/bin/bash

set -e  # exit on failure

PACKAGES=(
    firefox
    nvim
    git
    hyprland
    hyprshot
    hyprlock
    fuzzel
    waybar
    kitty
    fish
    awww
    starship
    mpv
    swayimg
)

echo "Installing packages.."
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"
