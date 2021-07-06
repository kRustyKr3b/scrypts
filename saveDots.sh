#!/bin/sh

cp ~/.zshrc ~/.vimrc  ~/.config/alacritty/alacritty.yml ~/.config/i3/config ~/.config/ranger/rc.conf ~/.config/ranger/rifle.conf ~/.config/dunst/dunstrc ~/.xinitrc  ~/.config/nvim/init.vim ~/dotfiles 

cp ~/.config/i3blocks/config ~/dotfiles/i3blocks

cp -r ~/.config/polybar ~/suckless/dwm-6.2/ ~/dotfiles 

notify-send ".FILES SAVED"

