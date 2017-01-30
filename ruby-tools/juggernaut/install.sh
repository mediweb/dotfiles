#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if ! $(gem list juggernaut -i)
then
  gem install juggernaut
fi
