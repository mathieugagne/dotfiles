#!/usr/bin/env sh

# https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt install apt-transport-https
sudo apt update -y
sudo apt install code # or code-insiders


# Setup Online Settings Services with your Github account
#  to sync settings from your other installations
# This will automatically install shortcuts, extensions, themes, etc.
