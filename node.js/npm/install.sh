#!/bin/sh

cd $DOTFILES_ROOT
load_nvm

if ! $(nvm ls | grep -q "v4.2.1")
then
  echo "II Installing Node.js v4.2.1"
  nvm install v4.2.1
  nvm alias default 4.2.1
fi
cd - > /dev/null
