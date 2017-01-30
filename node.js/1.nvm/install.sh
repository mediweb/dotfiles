#!/bin/sh

cd $DOTFILES_ROOT
if test ! $(which nvm)
then
  echo "II Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | sh
fi
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
cd - > /dev/null
