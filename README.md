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
sudo apt-get install wget htop tree curl git vim

# utilities
sudo apt-get install bmon iftop
```

### dotfiles

```
git clone git@github.com:mathieugagne/dotfiles.git ~/dotfiles
ln -fs ~/dotfiles/.gemrc ~/.gemrc
ln -fs ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -fs ~/dotfiles/.zshrc ~/.zshrc
ln -fs ~/dotfiles/.vimrc ~/.vimrc
```

### zsh

```
sudo apt-get install zsh
chsh -s $(which zsh)
# logout

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### vim

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/myusuf3/numbers.vim
git clone https://github.com/airblade/vim-gitgutter
```

### fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone git@github.com:junegunn/fzf.vim ~/.vim/bundle/fzf.vim
```

### ruby

```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```
