#!/bin/sh

cd $DOTFILES_ROOT
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
if ! $(nvm ls | grep -q "v4.2.1")
then
  echo "II Installing Node.js v4.2.1"
  nvm install v4.2.1
fi
cd - > /dev/null
