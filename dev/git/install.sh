#!/usr/bin/env sh

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt-get update -y
sudo apt-get install -y gh

# To find the latest release: https://github.com/dandavison/delta/releases
GIT_DELTA_VERSION=0.12.1
sudo wget -O /var/cache/apt/archives/git-delta_${GIT_DELTA_VERSION}_amd64.deb https://github.com/dandavison/delta/releases/download/${GIT_DELTA_VERSION}/git-delta_${GIT_DELTA_VERSION}_amd64.deb
sudo dpkg -i /var/cache/apt/archives/git-delta_${GIT_DELTA_VERSION}_amd64.deb

ln -fs ~/dotfiles/.config/.gitconfig ~/.gitconfig
