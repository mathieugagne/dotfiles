# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
fi

# vim
export EDITOR=vim
# Set cap locks as escape for easy vim
if hash setxkbmap 2>/dev/null; then
    setxkbmap -option caps:swapescape
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if [ -x "$(command -v rbenv)" ]; then
  eval "$(rbenv init -)"
fi

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# pip
export PATH="$HOME/.local/bin:$PATH"

# n
export N_PREFIX="$HOME/.n"
export PATH=$N_PREFIX/bin:$PATH

# Scripts
export PATH="$HOME/dotfiles/scripts:$PATH"
if [ -f "$HOME/dotfiles/scripts/.env" ]; then
  . "$HOME/dotfiles/scripts/.env"
fi
