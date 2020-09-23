#!/usr/bin/env sh

dev/ruby/install.sh
dev/gh/install.sh
dev/go/install.sh
dev/python/install.sh
dev/javascript/install.sh

# Jira CLI
go get github.com/go-jira/jira/cmd/jira
rm -rf ~/.jira.d/
ln -fs ~/dotfiles/dev/.jira.d/ ~/.jira.d

# Github CLI
wget https://github.com/github/hub/releases/download/v2.14.1/hub-linux-amd64-2.14.1.tgz
tar -xzvf hub-linux-amd64-2.14.1.tgz
rm hub-linux-amd64-2.14.1.tgz
sudo ./hub-linux-amd64-2.14.1/install
rm -rf hub-linux-amd64-2.14.1
