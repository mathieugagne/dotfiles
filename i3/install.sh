#!/usr/bin/env sh

sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps

mkdir -p ~/.config/i3
ln -fs ~/dotfiles/i3/config ~/.config/i3/config

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false

~/dotfiles/i3/polybar/install.sh
