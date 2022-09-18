#!/bin/zsh

var=$(echo -e "Lock\nSuspend\nExit i3\nReboot\nShutdown" | rofi -dmenu -p "Action" -l 5)

case "$var" in 
	"Lock") betterlockscreen -l;;
	"Suspend") systemctl suspend & betterlockscreen -l;;
	"Exit i3") killall i3;;
#	"Restart DWM") killall dwm && ./home/shaolinrus/scripts/dwmRestart.sh;;
	"Reboot") reboot;;
	"Shutdown") shutdown now --no-wall;;
esac
