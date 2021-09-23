#!/bin/bash

# Ubuntu LTS

# install fish, vim, fzf, etc
sudo apt install fish vim fzf trash-cli curl gcc bat ripgrep -y
chsh -s $(which fish)

# install fish plugins 
fish -c "fundle install"

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

cargo install exa || echo "exa installation failed"
# install tealdeer dependency
sudo apt install libssl-dev
cargo install tealdeer || echo "tealdeer installation failed"

# Add cargo bin to path
printf "\nif [ -d \"$HOME/.cargo/bin\" ] ; then\n\tPATH=\"$HOME/.cargo/bin:$PATH\"\nfi\n" >> $HOME/.profile

echo "Restart terminal and it's done."
echo "For Rust you need to logout and login again."
