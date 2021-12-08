#!/usr/bin/env sh

mkdir -p ~/.config/dotfiles
touch ~/dotfiles/scripts/.env
ln -fs ~/.config/dotfiles/.scripts.env ~/dotfiles/scripts/.env
