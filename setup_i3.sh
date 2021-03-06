#!/usr/bin/bash
#install https://raw.githubusercontent.com/supermarin/YosemiteSanFranciscoFont/master/install
set -e #abort on error

sudo pacman -Sy --noconfirm i3 dash feh i3lock rofi compton imagemagick scrot
pacaur -S --noconfirm ttf-font-awesome i3blocks-git

sudo mkdir -p  /usr/lib/i3blocks
sudo cp -r ./scripts/* /usr/lib/i3blocks/

mkdir -p $HOME/.config/i3blocks
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.wallpaper
mkdir -p $HOME/screenshots

cp ./i3blocks.conf $HOME/.config/i3blocks/config
cp ./config $HOME/.config/i3/config
cp ./i3lock-wrapper $HOME/.config/i3/i3lock-wrapper
cp ./wallpaper/ $HOME/.wallpaper/*
