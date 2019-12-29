#!/usr/bin/env sh

# node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

# n
npm install -g n

# optionally
# sudo apt remove nodejs
