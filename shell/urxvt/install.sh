#!/usr/bin/env sh

sudo apt update
sudo apt install -y rxvt-unicode

ln -fs ~/dotfiles/.Xresources ~/.Xresources
xrdb ~/.Xresources
