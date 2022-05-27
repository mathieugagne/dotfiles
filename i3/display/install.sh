#!/bin/bash

rm -rf /tmp/i3-autodisplay
git clone https://github.com/lpicanco/i3-autodisplay.git /tmp/i3-autodisplay
cd /tmp/i3-autodisplay
go build cmd/i3-autodisplay/i3-autodisplay.go
sudo mv i3-autodisplay /usr/local/bin/
cd ~/dotfiles
