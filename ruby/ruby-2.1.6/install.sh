#!/bin/sh

source '/usr/local/share/chruby/chruby.sh'

if $(chruby | grep -q "2.1.6")
then
  echo "  Ruby 2.1.6 already installed."
else
  echo "  Installing Ruby 2.1.6"
  ruby-install ruby 2.1.6
fi
