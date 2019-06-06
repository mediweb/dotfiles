#!/bin/sh

source '/usr/local/share/chruby/chruby.sh'

if $(chruby | grep -q "2.3.1")
then
  echo "  Ruby 2.3.1 already installed."
else
  echo "  Installing Ruby 2.3.1"
  brew_install readline
  ruby-install ruby 2.3.1 -- RUBY_CONFIGURE_OPTS=--with-readline-dir=`brew --prefix readline`
fi
