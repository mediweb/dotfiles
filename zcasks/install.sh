#!/bin/bash
IFS="
"
source "$(dirname $0)/../scripts/common"

casks="
chromedriver
"

brew tap homebrew/cask

for i in $casks
do
  if [[ ! $i == \#* ]]
  then
    cask_install $i
  fi
done
