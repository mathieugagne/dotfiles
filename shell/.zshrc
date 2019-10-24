export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
source $HOME/.profile

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# docker-compose autocompletion
fpath=(~/.zsh/completion $fpath)

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"

# pip
export PATH="~/.local/bin:$PATH"
