#!/usr/bin/env sh

# https://github.com/polybar/polybar/wiki/Compiling
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

sudo rm -rf ~/.local/lib/polybar

git clone --recursive https://github.com/polybar/polybar ~/.local/lib/polybar
cd ~/.local/lib/polybar

# Compiling
mkdir build
cd build
cmake ..
make -j$(nproc)
# Optional. This will install the polybar executable in /usr/local/bin
sudo make install

mkdir -p ~/.config/polybar

# Link to your desired color scheme
ln -fs ~/dotfiles/i3/polybar/configs/monokai ~/.config/polybar/config
# ln -fs ~/dotfiles/i3/polybar/configs/sentakuhm ~/.config/polybar/config
