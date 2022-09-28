#!/usr/bin/env sh

wget -q https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb -O /tmp/nordvpn.deb
sudo apt install /tmp/nordvpn.deb
sudo apt update -y
sudo apt install nordvpn

nordvpn set threatprotectionlite on
