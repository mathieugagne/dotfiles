#!/usr/bin/env sh

sudo apt install cmake cmake-data pkg-config \
libcairo2-dev \
libxcb1-dev libxcb-util0-dev libxcb-randr0-dev \
python-xcbgen xcb-proto \
libxcb-image0-dev \
libxcb-ewmh-dev libxcb-icccm4-dev \
libpulse-dev \
libxcb-xkb-dev \
libiw-dev \
libnl-3-dev \
wireless-tools \
libasound2-dev \
libcurl4-openssl-dev

git clone --branch 3.2 --recursive https://github.com/jaagr/polybar ~/.local/lib/polybar
cd ~/.local/lib/polybar/ && ./build.sh -f

mkdir -p ~/.config/polybar
ln -fs ~/dotfiles/i3/polybar/config ~/.config/polybar/config
