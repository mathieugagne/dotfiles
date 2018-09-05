#!/usr/bin/env sh

/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb
SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a
sudo dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | sudo cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3 nitrogen compton feh numlockx rofi scrot

mkdir -p ~/.config/i3
ln -fs ~/dotfiles/i3/config ~/.config/i3/config

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false

~/dotfiles/i3/polybar/install.sh
