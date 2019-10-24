#!/usr/bin/env sh

sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libpq-dev libsqlite3-dev

ln -fs ~/dotfiles/dev/.gemrc ~/.gemrc
ln -fs ~/dotfiles/dev/.pryrc ~/.pryrc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
