#!/bin/zsh

var=$(echo -e "Lock\nSuspend\nExit DWM\nReboot\nShutdown" | rofi -dmenu -p "Action" -l 5)

case "$var" in 
	"Lock") betterlockscreen -l;;
	"Suspend") systemctl suspend & betterlockscreen -l;;
	"Exit DWM") killall dwm;;
#	"Restart DWM") killall dwm && ./home/shaolinrus/scripts/dwmRestart.sh;;
	"Reboot") reboot;;
	"Shutdown") shutdown now;;
esac
