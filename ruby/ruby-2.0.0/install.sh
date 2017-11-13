#!/bin/sh

source '/usr/local/share/chruby/chruby.sh'

if $(chruby | grep -q "2.0.0")
then
  echo "  Ruby 2.0.0 already installed."
else
  echo "  Installing Ruby 2.0.0"
  ruby-install ruby 2.0.0-p645
fi
