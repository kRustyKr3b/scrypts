#!/bin/sh

cp ~/.zshrc ~/.vimrc  ~/.config/alacritty/alacritty.yml ~/.config/i3/config ~/.config/ranger/rc.conf ~/.config/ranger/rifle.conf ~/.config/dunst/dunstrc /usr/local/bin/startdwm  ~/.config/nvim/init.vim ~/.config/qutebrowser/config.py ~/dotfiles 

cp ~/.config/i3blocks/config ~/dotfiles/i3blocks

cp -r ~/.config/polybar ~/suckless/dwm-6.2/ ~/dotfiles 

cd ~/dotfiles/ && git add . && notify-send "DOTS READY"
cd ~/scripts/ && git add . && notify-send "SCRIPTS READY"

