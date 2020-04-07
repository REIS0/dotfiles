#!bin/sh

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
antibody bundle < .zsh_plugins.txt > .zsh_plugins.sh

# install starship
curl -fsSL https://starship.rs/install.sh | zsh

