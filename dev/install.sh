#!/usr/bin/env sh

dev/ruby/install.sh
dev/go/install.sh
dev/python/install.sh
dev/javascript/install.sh



# Jira CLI
go get github.com/go-jira/jira/cmd/jira
rm -rf ~/.jira.d/
ln -fs ~/dotfiles/dev/.jira.d ~/.jira.d
