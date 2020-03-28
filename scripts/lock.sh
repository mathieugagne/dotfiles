#!/bin/bash

revert() {
  rm /tmp/*screen*.png
}

trap revert HUP INT TERM

background_images=(~/dotfiles/pictures/you_see_morty.png ~/dotfiles/pictures/rick.png)
rand=$[$RANDOM % ${#background_images[@]}]
random_background=${background_images[rand]}

scrot /tmp/locking_screen.png
convert -blur 0x8 /tmp/locking_screen.png /tmp/screen_blur.png
convert -composite /tmp/screen_blur.png $random_background -gravity SouthEast -geometry -20x1200 /tmp/screen.png
i3lock -i /tmp/screen.png
revert
