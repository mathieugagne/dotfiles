#!/bin/bash

sudo chmod a+rw /sys/class/backlight/intel_backlight/brightness

cat << EOF | sudo tee /etc/udev/rules.d/backlight.rules
RUN+="/bin/chgrp video /sys/class/backlight/intel_backlight/brightness"
RUN+="/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness"
EOF
