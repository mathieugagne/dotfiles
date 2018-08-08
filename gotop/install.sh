#!/usr/bin/env sh

git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop
cd /tmp/gotop
/tmp/gotop/scripts/download.sh
sudo mv /tmp/gotop/gotop /usr/local/bin/gotop
cd ~/dotfiles
rm -rf /tmp/gotop
