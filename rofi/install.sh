#!/usr/bin/env sh

sudo apt-get install -y rofi
mkdir -p ~/.config/rofi

# Themes
ln -fs ~/dotfiles/rofi/themes/dracula.rasi ~/.config/rofi/config.rasi
# ln -fs ~/dotfiles/rofi/themes/nord.rasi ~/.config/rofi/config.rasi
