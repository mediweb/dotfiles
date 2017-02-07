#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
prompt steeef


alias gsg="git fetch && git_stats generate && open git_stats/activity/year_month.html"

# RubyMotion Android dev / Java 6
# export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export RUBYMOTION_ANDROID_SDK=/Users/yemartin/.rubymotion-android/sdk
export RUBYMOTION_ANDROID_NDK=/Users/yemartin/.rubymotion-android/ndk

# chruby
source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'

## Start MacPorts stuff
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export QTDIR=/opt/local/lib/qt3
## END MacPorts stuff

# Postgres App
# PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
export PGHOST=/var/pgsql_socket

# Add local gems bin directory and set GEM_HOME
# export PATH=~/.gem/ruby/1.8/bin:$PATH
# export GEM_HOME=~/.gem/ruby/1.8
# export GEM_PATH=~/.gem/ruby/1.8

# Add user path
export PATH=$PATH:~/bin:~/Documents/bin

export LANG=en_US.UTF-8

alias dus='du -Pscxm * | sort -nr'

alias lah='ls -lah'

# export VISUAL='~/bin/mate --wait'
# export VISUAL='~/bin/subl --wait'
export VISUAL='/Users/yemartin/bin/subl --wait'
export EDITOR=/usr/bin/vim

#Sublime
alias s='subl'

# 3Bees helper
alias h='cd /Users/yemartin/Documents/workspaces/mediweb/3bees/'

# Rails
alias r='rails'
alias br='bundle exec rails'

# Zeus
# alias z='zeus'

# bundle exec
# alias cap='bundle exec cap'

alias db_migrate='brake db:migrate RAILS_ENV=test && brake db:migrate'
alias db_rollback='brake db:rollback RAILS_ENV=test && brake db:rollback'

# alias gcm='git commit -m'
# function gcm() {
#   read -e -p "Commit message: " MSG
#   read -e -p "Refs: #" -i "$CURRENT_TOPIC_REF" REF
#   if [ -n "$REF" ]; then
#     export CURRENT_TOPIC_REF=$REF
#     MSG="$MSG\n[#$REF]"
#   fi
#   git commit -m"$(echo -e "$MSG")"
# }

# tmux stuff
# sessions
alias tsa='tmux attach -t'
alias tsd='tmux detach'
alias tsl='tmux list-sessions'
alias tsn='tmux new -s'
alias tss='tmux switch -t'
# windows
alias twn='tmux new-window'
alias tws='tmux select-window -t'
alias twr='tmux rename-window'
# panes
alias tpv='tmux split-window'
alias tph='tmux split-window -h'
alias tpsw='tmux swap-pane'
alias tps='tmux select-pane'
alias tpsn='tmux select-pane -t :.+'
# Helpful
alias tlk='tmux list-keys'
alias tlc='tmux list-commands'
alias ti='tmux info'
alias trl='tmux source-file ~/.tmux.conf'

# Show RVM status in prompt
# export PROMPT_COMMAND='echo -n ">>> "; echo -n $GEM_HOME | sed -e "s/.*\///" | tr -d "\012" ; git branch --no-color 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/" | tr -d "\012" ; echo " <<<"'

# . ~/.cli_separators

# Add texbin to the PATH
export PATH=$PATH:/usr/texbin

# Load RVM

# Enable bash completion
# if [ -f /opt/local/etc/bash_completion ]; then
#     . /opt/local/etc/bash_completion
# fi

# Enable Brew bash completion
# if [ -f `brew --prefix`/etc/bash_completion ]; then
#   . `brew --prefix`/etc/bash_completion
# fi

# Engine Yard
# alias deploy_staging='ey deploy -m -v -r staging -e staging'

# CoffeeLint config
export COFFEELINT_CONFIG=~/.coffeelint.json

# RubyMotion helpers
alias rmr='bundle exec rake COCOAPODS_NO_UPDATE=1 nibs:clean && bundle exec rake COCOAPODS_NO_UPDATE=1 resources'
alias rmib='bundle exec rake COCOAPODS_NO_UPDATE=1 ib:project && cp ib.xcodeproj/Stubs.h xcode/sekken/sekken/'
alias k='bundle exec rake COCOAPODS_NO_UPDATE=1 calabash:run device=ipad'

# WordsHelper
# alias wh="irb -I/Users/yemartin/bin -r words_helper"



# Testflight
export TESTFLIGHT_API_TOKEN=364a40476da988ddbe67d568f06512bf_MTAxMTMzNzIwMTMtMDQtMjUgMDM6MDM6MzguMjQxNTQ4



# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# Better autocompletion
# bind "set completion-ignore-case on"
# bind "set show-all-if-ambiguous on"


# NVM
# source $(brew --prefix nvm)/nvm.sh

# shopt -s globstar autocd

# Docker
eval "$(docker-machine env default)"

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Small utils
alias cd..="cd .."
alias sudossh="sudo -E ssh -F ~/.ssh/config -l $USER"

# Go
GOPATH=/Users/yemartin
