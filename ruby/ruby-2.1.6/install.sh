#!/bin/sh

source '/usr/local/share/chruby/chruby.sh'

if $(chruby | grep -q "2.1.6")
then
  echo "  Ruby 2.1.6 already installed."
else
  echo "  Installing Ruby 2.1.6"
  ruby-install ruby 2.1.6
fi

echo "  Switching to Ruby 2.1.6"
source '/usr/local/share/chruby/chruby.sh'
chruby 2.1.6
