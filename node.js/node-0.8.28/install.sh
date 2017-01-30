#!/bin/sh

cd $DOTFILES_ROOT
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
if ! $(nvm ls | grep -q "v0.8.28")
then
  echo "II Installing Node.js v0.8.28"
  nvm install v0.8.28
fi
cd - > /dev/null
