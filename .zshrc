export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

export EDITOR=vim

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pip
[ -f ~/.local/bin ] && export PATH="~/.local/bin:$PATH"

# Set cap locks as escape for easy vim
setxkbmap -option caps:swapescape

