#!/bin/sh

cd "$(dirname $0)"/..

if test ! $(which chruby-exec)
then
  echo "  Installing chruby"
  brew install chruby > log/install-chruby.log
fi

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install"
  brew install ruby-install > log/install-ruby-install.log
fi

