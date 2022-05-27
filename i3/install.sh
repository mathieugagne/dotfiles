#!/usr/bin/env sh

sudo add-apt-repository -y ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install -y i3-gaps numlockx

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false

# Install small c program to keep track of current directory
# This allows us to open a new terminal on the same path as we last were
# https://github.com/schischi/xcwd
wget https://github.com/schischi/xcwd/archive/master.zip -O /tmp/xcwd.zip
unzip /tmp/xcwd.zip -d /tmp
cd /tmp/xcwd-master
sudo make install
rm -rf /tmp/xcwd.zip /tmp/xcwd-master
cd ~/dotfiles

# Select which computer you are on and apply the right configuration
mkdir -p ~/.config/i3
ln -fs ~/dotfiles/i3/config.laptop.ini ~/.config/i3/config
# ln -fs ~/dotfiles/i3/config.desktop.ini ~/.config/i3/config
ln -fs ~/.config/dotfiles/.i3.env ~/dotfiles/i3/.env


laptop/display/install.sh
