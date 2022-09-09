#!/bin/bash

# TODO: Create Xorg.conf.d/2-intel.conf config file
# https://wiki.archlinux.org/title/backlight#xbacklight

sudo apt install xbacklight redshift

sudo chmod a+rw /sys/class/backlight/intel_backlight/brightness

cat << EOF | sudo tee /etc/udev/rules.d/backlight.rules
RUN+="/bin/chgrp video /sys/class/backlight/intel_backlight/brightness"
RUN+="/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness"
EOF

sudo usermod -a -G video mathieu
