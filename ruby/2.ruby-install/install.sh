#!/bin/sh

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install"
  brew install ruby-install
fi
