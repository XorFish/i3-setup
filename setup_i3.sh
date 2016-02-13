#!/usr/bin/bash


sudo pacman -S --noconfirm i3 dash feh i3lock rofi compton imagemagick scrot
ruby -e "$(curl -fsSL https://raw.github.com/supermarin/YosemiteSanFranciscoFont/master/install)"
yaourt -S --noconfirm ttf-font-awesome i3blocks-git

sudo mkdir /usr/lib/i3blocks
sudo cp ./scripts/* /usr/lib/i3blocks/

mkdir $HOME/.config/i3blocks
mkdir $HOME/.config/i3
mkdir $HOME/.wallpapers
mkdir $HOME/screenshots

cp ./i3blocks.conf $HOME/.config/i3blocks/conf
cp ./config $HOME/.config/i3/config
cp ./i3lock-wrapper $HOME/.config/i3/i3lock-wrapper
cp ./wallpapers/ $HOME/.wallpaper/*
