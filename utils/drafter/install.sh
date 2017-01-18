#!/bin/sh
source "$(dirname $0)/../../scripts/common"

if test ! $(which drafter)
then
  echo "II Installing drafter"
  brew install --HEAD https://raw.github.com/apiaryio/drafter/master/tools/homebrew/drafter.rb
fi
