#!/bin/sh

source "$(dirname $0)/../../scripts/common"
load_nvm

if ! $(nvm ls | grep -q "v10.15.3")
then
  echo "II Installing Node.js v10.15.3"
  nvm install v10.15.3
  nvm alias default 10.15.3
fi
cd - > /dev/null
