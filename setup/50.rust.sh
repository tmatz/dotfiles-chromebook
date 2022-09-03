#!/bin/bash
# see http://asdf-vm.com/guide/getting-started.html
asdf plugin add rust
asdf install rust latest
asdf global rust latest
rustup component add rls rust-analysis rust-src
cargo install cargo-watch
