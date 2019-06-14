#!/usr/bin/env sh

ln -fs ~/dotfiles/shell/.bashrc ~/.bashrc
ln -fs ~/dotfiles/shell/.bash_aliases ~/.bash_aliases
ln -fs ~/dotfiles/shell/.profile ~/.profile

cp ~/dotfiles/shell/themes/oxide.zsh-theme ~/.oh-my-zsh/themes/oxide.zsh-theme

# ZSH
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -fs ~/dotfiles/shell/.zshrc ~/.zshrc

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# gnome-terminal themes
sudo apt install dconf-cli
wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh

# https://github.com/athityakumar/colorls
gem install colorls
rbenv rehash
