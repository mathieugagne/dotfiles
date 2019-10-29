#!/usr/bin/env sh

sudo apt update
sudo apt install -y wget htop tree curl git vim bmon iftop xclip jq feh

shell/install.sh
fonts/install.sh
vim/install.sh
i3/install.sh
dev/install.sh
docker/install.sh
gotop/install.sh
sublime-text/install.sh
spotify/install.sh
vscode/install.sh
slack/install.sh

# Tweaks
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
