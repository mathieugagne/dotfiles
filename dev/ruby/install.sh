#!/usr/bin/env bash

sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libpq-dev libsqlite3-dev libxml2-dev

ln -fs ~/dotfiles/dev/ruby/.gemrc ~/.gemrc
ln -fs ~/dotfiles/dev/ruby/.pryrc ~/.pryrc

if [[ ! -d ~/.rbenv ]]
then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
fi

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
