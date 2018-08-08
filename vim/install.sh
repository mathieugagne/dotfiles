#!/usr/bin/env sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone https://github.com/ngmy/vim-rubocop.git ~/.vim/bundle/vim-rubocop
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/vim-easymotion
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim

ln -fs ~/dotfiles/vim/.vimrc ~/.vimrc
