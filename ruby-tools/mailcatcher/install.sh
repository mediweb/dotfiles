#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if ! $(gem list mailcatcher -i)
then
  gem install mailcatcher
fi
