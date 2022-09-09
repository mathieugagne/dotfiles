#!/bin/bash

laptop/backlight/install.sh
laptop/tlp/install.sh

# Collection of scripts that handle suspend and resume
# You must also complete the task in the README.md
sudo apt install pm-utils

# Lock screen after closing lid
sudo apt install xss-lock
