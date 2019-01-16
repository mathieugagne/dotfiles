#!/usr/bin/env bash

# This script is inspired from the following gist:
# https://gist.github.com/ipbastola/2760cfc28be62a5ee10036851c654600

echo "Currently running kernel: $(uname -r)"

echo "Deleting legacy kernels:"
sudo dpkg --list 'linux-image*' | awk '{ if ($1=="ii") print $2}' | grep -v `uname -r`

# Allow time to exit
sleep 2

sudo dpkg --list 'linux-image*' | awk '{ if ($1=="ii") print $2}' | grep -v `uname -r` | xargs sudo apt purge $1 -y

sudo apt autoremove -y
sudo update-grub
