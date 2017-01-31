#!/bin/sh

if test ! $(which chruby-exec)
then
  echo "  Installing chruby"
  brew install chruby
fi
