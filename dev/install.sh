#!/usr/bin/env sh

# ruby
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libpq-dev libsqlite3-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

ln -fs ~/dotfiles/dev/.gemrc ~/.gemrc
ln -fs ~/dotfiles/dev/.pryrc ~/.pryrc

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# pip
# http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-linux.html
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
rm get-pip.py

# AWS & Beanstalk
pip install awsebcli --upgrade --user
pip install awscli --upgrade --user
