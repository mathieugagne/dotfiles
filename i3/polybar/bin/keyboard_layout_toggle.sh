#!/bin/sh

get_layout() {
    keyboard_device_layout=$(~/dotfiles/i3/polybar/bin/keyboard_layout.sh)
    case $keyboard_device_layout in
        "ca,fr") layout="us";;
        "us") layout="ca,fr";;
        *) layout="us";
    esac

    echo $layout
}

setxkbmap $(get_layout)
