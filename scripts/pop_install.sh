#!/bin/bash

# My main use is ubuntu based, just change for your distro

# install fish, vim, fzf
sudo apt install fish vim fzf trash-cli alacritty -y
chsh -s $(which fish)

# install fish plugins 
fish -c "fundle install"

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install ls-deluxe
cargo install bat || echo "bat installation failed"
cargo install exa || echo "exa installation failed"
cargo install ripgrep || echo "ripgrep installation failed"
# install tealdeer dependency
sudo apt install libssl-dev
cargo install tealdeer || echo "tealdeer installation failed"

echo "Restart terminal and it's done."
echo "For Rust you need to logout and login again."
