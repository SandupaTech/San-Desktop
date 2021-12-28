#!/bin/bash

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list 

# Add Custom Titus Rofi Deb Package
dpkg -i 'Custom Packages from Debian-Titus/rofi_1.7.0-1_amd64.deb'

# Update packages list
apt update

# Add base packages
apt install unzip alsa-utils picom bspwm polybar sddm rofi kitty thunar flameshot neofetch sxhkd git lxpolkit lxappearance xorg htop nitrogen dunst vim

# Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

#Starship shell
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo "#Starship Shell" >> ~/.bashrc
echo "eval "$(starship init bash)"" >> ~/.bashrc

#Neofetch
echo "#NeoFetch" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc

#Vim = NeoVim
echo "alias vim='nvim'" >> ~/.bashrc
source ~/.bashrc
