#!/bin/bash

for file in setup/*.sh; do
  if [ -x $file ]; then
    . $file
  fi
done
