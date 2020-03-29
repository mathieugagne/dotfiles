#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Enable numlock on keyboard
/usr/bin/numlockx on

# Increase repeat key rate
/usr/bin/xset r rate 220 40

# Start Xsession
. /etc/X11/Xsession
