#!/usr/bin/env sh

mkdir -p ~/.local/share/fonts/
cp ~/dotfiles/fonts/fontawesome-free-5.3.1-desktop/otfs/*.otf ~/.local/share/fonts/
cp ~/dotfiles/fonts/fontawesome/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/monofur/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/hack/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/noto/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/unifont/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/material/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/weather/*.ttf ~/.local/share/fonts/

sudo mkdir -p /opt/nerd-fonts/
sudo chown $USER: /opt/nerd-fonts

cd /opt/nerd-fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/UbuntuMono.zip
unzip UbuntuMono.zip
cp *.ttf ~/.local/share/fonts/

# Build font information cache files
fc-cache -fv
