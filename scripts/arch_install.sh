#!/bin/bash

# NEED GIT

# must install packages
sudo pacman -S xorg xorg-xinit xdg-user-dirs 

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install display manager
yay -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm.service

# install other stuff that I use
yay -S i3 alacritty rofi xorg-xrandr dunst polybar-git thunar thunar-volman feh fish trash-cli xcursor-neutral

# set login shell
chsh -s $(which fish)

# init fish shell
fish
fundle install

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install aditional stuff using cargo
cargo install lsd
cargo install ripgrep

echo "Reboot? [y/n]"

read answer

if [ $answer -eq "y"]; then
	reboot
else
	echo "Reboot later for applying changes"
fi
