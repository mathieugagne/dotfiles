#!/usr/bin/env sh

mkdir -p ~/.local/share/fonts/
cp ~/dotfiles/fonts/unifont/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/material/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/weather/*.ttf ~/.local/share/fonts/

sudo mkdir -p /opt/nerd-fonts/
sudo chown $USER: /opt/nerd-fonts

cd /opt/nerd-fonts

wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/UbuntuMono.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/LiberationMono.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Noto.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Monofur.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/SourceCodePro.zip

unzip -u UbuntuMono.zip
unzip -u Hack.zip
unzip -u LiberationMono.zip
unzip -u Noto.zip
unzip -u Monofur.zip
unzip -u SourceCodePro.zip

mv *.ttf ~/.local/share/fonts/

# Build font information cache files
fc-cache -fv
