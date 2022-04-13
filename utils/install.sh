#!/usr/bin/env sh

sudo apt update

# Tools
sudo apt install -y wget htop tree curl git vim bmon iftop xclip jq direnv

# Software
sudo apt install -y ranger

# Multimedia
sudo apt install -y feh neofetch mpv scrot nitrogen pavucontrol

# Monitoring
sudo apt install -y htop iftop
utils/gotop/install.sh
utils/nethogs/install.sh

# Tweaks
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
