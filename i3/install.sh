#!/usr/bin/env sh

sudo add-apt-repository -y ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install -y i3-gaps numlockx

mkdir -p ~/.config/i3
ln -fs ~/dotfiles/i3/config.ini ~/.config/i3/config

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false
