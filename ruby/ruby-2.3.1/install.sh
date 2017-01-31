#!/bin/sh

source '/usr/local/share/chruby/chruby.sh'

if $(chruby | grep -q "2.3.1")
then
  echo "  Ruby 2.3.1 already installed."
else
  echo "  Installing Ruby 2.3.1"
  ruby-install ruby 2.3.1
fi
