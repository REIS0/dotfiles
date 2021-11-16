#!/bin/bash

# Pop_OS! 

# install fish, vim, fzf
sudo apt install fish vim fzf bat ripgrep exa trash-cli alacritty -y
chsh -s $(which fish)

# install fish plugins 
fish -c "fundle install"

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install tealdeer dependency
sudo apt install libssl-dev
cargo install tealdeer || echo "tealdeer installation failed"

echo "Restart terminal and it's done."
echo "For Rust you need to logout and login again."
