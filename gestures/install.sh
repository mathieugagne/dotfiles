#!/usr/bin/env sh

sudo apt install wmctrl xdotool libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git /tmp/libinput-gestures
cd /tmp/libinput-gestures
sudo make install

