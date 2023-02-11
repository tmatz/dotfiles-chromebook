#!/bin/bash
# see http://asdf-vm.com/guide/getting-started.html
sudo apt install -y curl git
if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
fi
. ../rc/50.asdf.sh
asdf update -all
