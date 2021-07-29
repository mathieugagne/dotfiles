# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if hash numlockx 2>/dev/null; then
  # Enable numlock on keyboard
  /usr/bin/numlockx on
fi

if hash setxkbmap 2>/dev/null; then
  # Allow additional keyboard layout
  setxkbmap -layout "us,ca"
  # Set cap locks as escape for easy vim
  setxkbmap -option caps:swapescape
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# Preferences
export EDITOR=vim
export TERMINAL=urxvt

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

# Secret ENV variables
if [ -f "$HOME/dotfiles/.config/.env" ]; then
  . "$HOME/dotfiles/.config/.env"
fi
