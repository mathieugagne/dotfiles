alias cdw="cd ~/workspace/potloc"
alias cdp="cd ~/workspace/personal"
alias cdu="cd ~/workspace/unisafety"

alias ll="ls -lAh"
alias psgrep="ps aux | grep"

# Utilities
alias xclip="xclip -selection c"

# Goodies
# https://gist.github.com/khakimov/3558086
matrix() {
  echo -e "\e[1;40m"
  clear
  while :
    do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 ))
    sleep 0.05
  done | awk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

# Get disk space usage by folder, for humans
# du -Pshx /* 2>/dev/null

# Ansible
alias ap='ansible-playbook'
alias ave='ansible-vault encrypt'
alias avd='ansible-vault decrypt'

# Rails server
alias rs='bin/rails s'
alias rc='bin/rails c'
alias rp='bin/rspec'
alias rsp='EXCLUDE_SYSTEM_TESTS=true EXCLUDE_INTEGRATION_TESTS=true bin/rspec'
alias rpof='bin/rspec --only-failures'
alias re='bundle exec reek'
alias ru='bundle exec rubocop --auto-correct'
alias rua='bundle exec rubocop --auto-gen-config'
alias bw="bin/webpack-dev-server"
alias bs="bin/sidekiq"
alias bu="bundle update"

# Docker
alias dc='docker-compose'

# Terraform
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply -auto-approve'

# js
pw() {
  yarn stylelint --fix "$1/**/*.scss";
  yarn eslint --fix "$1/**/*.js";
  yarn prettier --write "$1/**/*.tsx";
}

# bundle
alias be="bundle exec"
alias fs="be foreman start"

# capistrano
alias bcs="be cap staging"
alias bcp="be cap production"

# git
alias gbclean="git checkout develop && git branch --merged | grep -v develop | xargs git branch -d"
alias gbpurge="git branch | grep -v -E \"master|develop\" | xargs git branch -D"
alias gcmgs="gcmsg"
alias gcmsg!="OVERCOMMIT_DISABLED=1 gcmsg"
alias gg="git grep --heading --break --line-number"
alias ggpush!="ggpush --force"
alias grbom="gfa && grb origin/master"
alias grbod="gfa && grb origin/develop"
alias grbiom="gfa && grbi origin/master"
alias grbiod="gfa && grbi origin/develop"
alias gft="git fetch --tags --prune"
alias gback="git reset --soft HEAD~1 ; git reset"
# Overrides zsh original. This one only removes untracked files, without touching .gitignore rules.
alias gclean="git status --porcelain | grep '??' | sed 's/^...//' | xargs /bin/rm -rf"
alias grho="gfa && grhh origin/$(git_current_branch)"

ggr() {
  gg $1 -- "**/*.rb"
}
