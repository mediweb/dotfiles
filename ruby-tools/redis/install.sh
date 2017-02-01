#!/bin/sh
source "$(dirname $0)/../../scripts/common"
source '/usr/local/share/chruby/chruby.sh'
chruby 2.1.6

if ! $(gem list redis -i)
then
  gem install redis
fi
