#!/bin/bash

for file in $HOME/dotfiles/setup/*; do
  if [ -x $file ]; then
    . $file
  fi
done
