#!/bin/sh
source "$(dirname $0)/../../scripts/common"
source '/usr/local/share/chruby/chruby.sh'
chruby 2.3.1

if ! $(gem list rubocop -i)
then
  gem install rubocop
fi
