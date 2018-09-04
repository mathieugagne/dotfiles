#!/usr/bin/env sh

cp ~/dotfiles/fonts/fontawesome-free-5.3.1-desktop/otfs/*.otf ~/.local/share/fonts/
cp ~/dotfiles/fonts/fontawesome/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/monofur/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/hack/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/noto/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/unifont/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/material/*.ttf ~/.local/share/fonts/
cp ~/dotfiles/fonts/weather/*.ttf ~/.local/share/fonts/

# Build font information cache files
fc-cache -fv
