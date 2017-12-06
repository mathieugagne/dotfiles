alias cdw="cd ~/workspace/"
alias cdp="cd ~/personal/"

alias ll="ls -lAh"

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
alias rc='bin/rails c'
alias rp='RAILS_ENV=test bin/rspec'
alias ru='bundle exec rubocop --auto-correct'
alias rua='bundle exec rubocop --auto-gen-config'

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
alias gcmgs="gcmsg"
