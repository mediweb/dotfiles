#!/bin/sh

cd "$(dirname $0)"/..

if test ! $(which chruby-exec)
then
  echo "  Installing chruby"
  brew install chruby > log/install-chruby.log
fi

# Load chruby
source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install"
  brew install ruby-install > log/install-ruby-install.log
fi

