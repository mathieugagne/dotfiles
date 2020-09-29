#!/usr/bin/env sh

sudo apt purge -y slack

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.9.1-amd64.deb
sudo dpkg -i slack-desktop-4.9.1-amd64.deb
rm slack-desktop-*.deb
