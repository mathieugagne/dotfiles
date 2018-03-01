# Workstation Install

### packages

```
sudo apt update
sudo apt install -y wget htop tree curl git vim bmon iftop xclip
```

### dotfiles

```
git clone git@github.com:mathieugagne/dotfiles.git ~/dotfiles
ln -fs ~/dotfiles/.gemrc ~/.gemrc
ln -fs ~/dotfiles/.pryrc ~/.pryrc
ln -fs ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -fs ~/dotfiles/.zshrc ~/.zshrc
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/i3/config ~/.config/i3/config
```

### zsh

Requires login in and out

```
sudo apt install zsh
chsh -s $(which zsh)
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
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/tpope/vim-sensible.git
git clone git@github.com:tpope/vim-fugitive.git
git clone git@github.com:godlygeek/tabular.git
git clone git@github.com:ngmy/vim-rubocop.git
git clone https://github.com/easymotion/vim-easymotion
git clone https://github.com/leafgarland/typescript-vim.git
```

### fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone git@github.com:junegunn/fzf.vim ~/.vim/bundle/fzf.vim
```

### i3

```
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb
SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a
sudo su
dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
apt update
apt install i3
exit
```

### ruby

```
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

### nodejs

```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install -y nodejs
```

### docker

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce

sudo usermod -aG docker ${USER}
su - ${USER}
```

### Rails pre-requesites

```
sudo apt install -y libpq-dev libsqlite3-dev
```

### Sublime Text 3

```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text
```

### Spotify

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client
```

### Tweaks

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```
