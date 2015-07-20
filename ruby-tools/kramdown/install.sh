#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if ! $(gem list kramdown -i)
then
  gem install kramdown
fi
