#!bin/sh

# install zsh
# my main use is ubuntu based, just change for your distro
sudo apt install zsh 
chsh -s $(which zsh)

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
antibody bundle < .zsh_plugins.txt > .zsh_plugins.sh

# install starship
curl -fsSL https://starship.rs/install.sh | zsh

echo "Restart terminal and it's done."
