#!/bin/bash
asdf plugin add coursier https://github.com/tmatz/asdf-coursier.git
asdf install coursier latest
asdf global coursier latest
coursier setup
cs install metals
#scala-cli config power true
