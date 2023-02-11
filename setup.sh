#!/bin/bash

for file in setup/*.sh; do
  if [ -x $file ]; then
    echo $file
  fi
done
