#!/bin/sh
source "$(dirname $0)/../../scripts/common"
source '/usr/local/share/chruby/chruby.sh'
chruby 2.1.6

if ! $(gem list mailcatcher -i)
then
  gem install mailcatcher
fi
