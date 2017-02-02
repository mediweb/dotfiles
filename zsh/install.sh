#!/bin/sh

cd "$(dirname $0)"/..

if [ "$SHELL" -ne "/bin/zsh" ]; then
  echo "Setting Zsh as the default shell..."
  chsh -s /bin/zsh
fi
