#!/bin/sh

source "$(dirname $0)/../scripts/common"
cd "$(dirname $0)"/..

identify_os() {
  local OS_NAMES
  OS_NAMES[18]="Mojave"
  OS_NAMES[17]="High Sierra"
  OS_NAMES[16]="Sierra"
  OS_NAMES[15]="El Capitan"
  OS_NAMES[14]="Yosemite"
  OS_NAMES[13]="Mavericks"
  OS_NAMES[12]="Mountain Lion"
  OS_NAMES[11]="Lion"
  OS_NAMES[10]="Snow Leopard"
  OS_NAMES[9]="Leopard"
  OS_NAMES[8]="Tiger"
  OS_NAMES[7]="Panther"
  OS_NAMES[6]="Jaguar"
  OS_NAMES[5]="Puma"

  OS_MAJOR_VERSION=$(uname -r | cut -d '.' -f 1)
  OS_NAME=${OS_NAMES[$OS_MAJOR_VERSION]}
}

# On MacOS, install Zsh using Homebrew if OS too old.
if [ "$(uname -s)" == "Darwin" ] ; then
  identify_os
  if [ "$OS_MAJOR_VERSION" -lt 14 ] ; then
    echo "Your OS ($OS_NAME) is too old. Please upgrade."; exit 1
  elif [ "$OS_MAJOR_VERSION" -lt 19 ] ; then
    # Note: Sierra came with a recent enough Zsh (5.2) but it had a bug.
    # See: See: https://github.com/zimfw/zimfw/issues/227
    # So we install Zsh from Brew anyway.
    echo "We will install a recent Zsh using Homebrew."
    brew install zsh
    default_shell="$(brew --prefix)/bin/zsh"
    if ! grep -Fxq "${default_shell}" /etc/shells
    then
      echo "Enter your password to allow adding ${default_shell} to /etc/shells"
      sudo /bin/sh -c "echo ${default_shell} >> /etc/shells"
    fi
  else
    echo "UNKNOWN OS"; exit 1
  fi
fi

if [ "$SHELL" != "$default_shell" ]; then
  echo "Setting $default_shell as the default shell..."
  chsh -s "$default_shell"
else
  echo "Your default shell is already set to $default_shell"
fi
