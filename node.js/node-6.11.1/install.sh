#!/bin/sh

source "$(dirname $0)/../../scripts/common"
load_nvm

if ! $(nvm ls | grep -q "v6.11.1")
then
  echo "II Installing Node.js v6.11.1"
  nvm install v6.11.1
  nvm alias default 6.11.1
fi
cd - > /dev/null
