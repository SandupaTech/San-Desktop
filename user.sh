#!/bin/bash

# Appearance pacakges
sudo apt install papirus-icon-theme lxappearance fonts-noto-color-emoji fonts-firacode fonts-font-awesome libqt5svg5 qml-module-qtquick-controls

# Make Theme folders
mkdir -p ~/.themes ~/.fonts ~/.wallpaper ~/.build ~/Pictures/Screenshots

# Fira Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d ~/.fonts   
fc-cache -vf

#Ms-fonts
sudo apt install ttf-mscorefonts-installer

#NeoVIM Installation
git clone https://github.com/Optixal/neovim-init.vim
chmod +x neovim-init.vim/install.sh
neovim-init.vim/install.sh

echo "RUN LXAPPEARANCE"

cp .Xresources ~
cp .Xnord ~
cp -R .config/* ~/.config/
cp .bash_aliases ~
cp wallpaper.jpg ~/.wallpaper
cp wallpaper2.jpeg ~/.wallpaper
sudo cp xorg.conf /etc/X11/xorg.conf
