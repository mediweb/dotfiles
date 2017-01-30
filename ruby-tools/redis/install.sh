#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if ! $(gem list redis -i)
then
  gem install redis
fi
