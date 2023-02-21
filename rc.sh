#!/bin/bash

for file in $HOME/dotfiles/rc/*; do
  if [ -x $file ]; then
    . $file
  fi
done
