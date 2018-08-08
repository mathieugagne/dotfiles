alias cdw="cd ~/workspace/"
alias cdp="cd ~/personal/"

alias ll="ls -lAh"

# Utilities
alias xclip="xclip -selection c"

# Get disk space usage by folder, for humans
# du -Pshx /* 2>/dev/null

# Ansible
alias ap='ansible-playbook'
alias ave='ansible-vault encrypt'
alias avd='ansible-vault decrypt'

# Rspec to keep color option
alias spec='spec --color --format specdoc'

# Rails server
alias rs='bin/rails s'
alias rc='SKIP_YARN_INTEGRITY_CHECK=true bin/rails c'
alias rp='bin/rspec'
alias rsp='bin/rspec spec/graphql spec/models spec/policies spec/services spec/workers'
alias ru='bundle exec rubocop --auto-correct'
alias rua='bundle exec rubocop --auto-gen-config'

# js
pw() {
  ./node_modules/.bin/stylelint --fix "$1/**/*.scss";
  ./node_modules/.bin/tslint --fix "$1/**/*.ts*";
  ./node_modules/.bin/prettier --write "$1/**/*.tsx";
}

# bundle
alias be="bundle exec"
alias fs="be foreman start"

# capistrano
alias bcs="be cap staging"
alias bcp="be cap production"

# editor
alias ee="subl -a ."

# git
alias gbclean="git checkout master && git branch --merged | grep -v master | xargs git branch -d"
alias gbpurge="git branch | grep -v "master" | xargs git branch -D"
alias gcmgs="gcmsg"
alias gg="git grep"
alias ggpush!="ggpush --force"
alias grbom="gfa && grb origin/master"

# Fixes
alias fix_corrupt_history=". ~/dotfiles/fix_corrupt_history.sh"
