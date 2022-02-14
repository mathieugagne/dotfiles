#!/usr/bin/env sh

# For the `import` lib used in `screenshot`
sudo apt install imagemagick-6.q16

mkdir -p ~/.config/dotfiles
touch ~/dotfiles/scripts/.env
ln -fs ~/.config/dotfiles/.scripts.env ~/dotfiles/scripts/.env
