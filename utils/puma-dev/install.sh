#!/bin/sh
source "$(dirname $0)/../../scripts/common"

  cd $DOTFILES_ROOT

  if test ! $(which puma-dev)
  then
    echo "II Installing $pkg"
    brew install puma/puma/puma-dev
    sudo puma-dev -setup
    puma-dev -install
  fi

  cd - > /dev/null
