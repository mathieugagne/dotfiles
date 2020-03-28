#!/bin/sh

get_layout() {
    keyboard_device_layout=$(~/dotfiles/scripts/keyboard_layout.sh)
    case $keyboard_device_layout in
        *"ca,fr") layout="us";;
        *"us") layout="ca,fr";;
        *) layout="us";
    esac

    echo $layout
}

echo "Switching keyboard layout to $(get_layout)"

setxkbmap $(get_layout)
