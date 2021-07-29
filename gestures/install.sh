#!/usr/bin/env sh

sudo apt install wmctrl xdotool libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git /tmp/libinput-gestures
cd /tmp/libinput-gestures
sudo make install
sudo gpasswd -a $USER input

# Follow instructions here to invert vertical scrolling:
# https://askubuntu.com/questions/1122513/how-to-add-natural-inverted-mouse-scrolling-in-i3-window-manager
# https://blog.spirotot.com/posts/dell-xps-15-9550-arch-linux-trackpad-gestures/
# TODO: Use `xinput set-prop` to automatically set this

ln -fs ~/dotfiles/gestures/libinput-gestures.conf ~/.config/libinput-gestures.conf
