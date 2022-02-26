#!/bin/bash

laptop/backlight/install.sh

# Lock screen after closing lid
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend true
