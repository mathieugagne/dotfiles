#!/usr/bin/env sh

# Install fontawesome
sudo mkdir -p /usr/share/fonts/opentype/fontawesome
sudo cp ~/dotfiles/fonts/fontawesome-free-5.3.1-desktop/otfs/* /usr/share/fonts/opentype/fontawesome/

# Install monofur
sudo mkdir -p /usr/share/fonts/truetype/monofur
sudo cp ~/dotfiles/fonts/monofur/*.ttf /usr/share/fonts/truetype/monofur/

# Install hack
sudo mkdir -p /usr/share/fonts/truetype/hack
sudo cp ~/dotfiles/fonts/hack/*.ttf /usr/share/fonts/truetype/hack/
