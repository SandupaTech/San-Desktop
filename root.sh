#!/bin/bash

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list 

# Add Custom Titus Rofi Deb Package
dpkg -i 'Custom Packages from Debian-Titus/rofi_1.7.0-1_amd64.deb'

# Update packages list
apt update

# Add base packages
apt install unzip alsa-utils picom bspwm polybar sddm rofi kitty thunar flameshot neofetch sxhkd git lxpolkit lxappearance xorg htop neovim nitrogen dunst

# Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

#Starship shell
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
cp .bashrc ~/
source ~/.bashrc
