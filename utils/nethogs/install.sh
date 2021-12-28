#!/usr/bin/env sh

# https://github.com/raboof/nethogs
# NetHogs is a small 'net top' tool. Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process.

sudo apt install build-essential libncurses5-dev libpcap-dev
git clone https://github.com/raboof/nethogs /tmp/nethogs
cd /tmp/nethogs
sudo make install
hash -r
cd ~/dotfiles
rm -rf /tmp/nethogs
