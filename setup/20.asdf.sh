#!/bin/bash
# see http://asdf-vm.com/guide/getting-started.html
sudo apt install curl git
test -d ~/.asdf || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
