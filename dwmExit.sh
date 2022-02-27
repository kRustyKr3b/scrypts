#!/bin/zsh

var=$(echo -e "Suspend\nExit DWM\nReboot\nShutdown" | dmenu -fn 'Iosevka Term-9' -p "Action:")

case "$var" in 
	"Suspend") systemctl suspend & betterlockscreen -l;;
	"Exit DWM") killall dwm;;
#	"Restart DWM") killall dwm && ./home/shaolinrus/scripts/dwmRestart.sh;;
	"Reboot") reboot;;
	"Shutdown") shutdown now;;
esac
