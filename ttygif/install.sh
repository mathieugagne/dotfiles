#!/usr/bin/env sh

sudo apt-get install -y imagemagick ttyrec gcc x11-apps make git

cd /usr/local/lib
sudo git clone https://github.com/icholy/ttygif.git
cd ttygif
make
sudo make install
