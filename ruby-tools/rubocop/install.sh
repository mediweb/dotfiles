#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if ! $(gem list rubocop -i)
then
  gem install rubocop
fi
