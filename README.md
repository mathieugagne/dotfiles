# Workstation Install

```
# nvidia drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-367
```

```
# generic
sudo apt-get update
sudo apt-get install wget htop tree curl git

# utilities
sudo apt-get install bmon iftop
```

### dotfiles

```
git clone git@github.com:mathieugagne/dotfiles.git ~/dotfiles
ln -fs ~/dotfiles/.gemrc ~/.gemrc
ln -fs ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -fs ~/dotfiles/.zshrc ~/.zshrc
```

### zsh

```
sudo apt-get install zsh
chsh -s $(which zsh)
# logout

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### ruby

```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```
