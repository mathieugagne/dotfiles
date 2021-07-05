#!/usr/bin/env sh

sudo apt install wmctrl xdotool libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git /tmp/libinput-gestures
cd /tmp/libinput-gestures
sudo make install

# Follow instructions here to invert vertical scrolling:
# https://askubuntu.com/questions/1122513/how-to-add-natural-inverted-mouse-scrolling-in-i3-window-manager
# TODO: Use `xinput set-prop` to automatically set this

