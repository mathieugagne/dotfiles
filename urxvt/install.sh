#!/usr/bin/env sh

sudo apt update
sudo apt install -y rxvt-unicode

# Install extension to increase/decrease font-size
mkdir -p ~/.urxvt/ext
git clone https://github.com/majutsushi/urxvt-font-size ~/.urxvt/ext/font-size
