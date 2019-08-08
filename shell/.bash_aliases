alias cdw="cd ~/workspace/"
alias cdp="cd ~/personal/"

alias ll="colorls -lAh --sd"

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
alias rsp='EXCLUDE_FEATURE_TESTS=true bin/rspec'
alias rpof='bin/rspec --only-failures'
alias ru='bundle exec rubocop --auto-correct'
alias rua='bundle exec rubocop --auto-gen-config'
alias bw="bin/webpack-dev-server"
alias bs="bin/sidekiq"

# Docker
alias dc='docker-compose'

# Terraform
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply -auto-approve'

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
alias gg="git grep --heading --break --line-number"
alias ggpush!="ggpush --force"
alias grbom="gfa && grb origin/master"
alias grbiom="gfa && grbi origin/master"
alias gft="git fetch --tags --prune"
alias gback="git reset --soft HEAD~1 ; git reset"
# Overrides zsh original. This one only removes untracked files, without touching .gitignore rules.
alias gclean="git status --porcelain | grep '??' | sed 's/^...//' | xargs /bin/rm -rf"
