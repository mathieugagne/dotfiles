export ZSH=/home/mat/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
