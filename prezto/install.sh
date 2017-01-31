#!/bin/sh

if ! [ -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
  git clone --recursive -j8 https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
