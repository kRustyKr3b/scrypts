#!/bin/sh

var=$(echo -e "Suspend\nExit i3\nReboot\nShutdown" | dmenu -fn 'Cantarell-8' -p "Action:")

case "$var" in 
	"Exit i3") i3-msg exit;;
	"Suspend") systemctl suspend & betterlockscreen -l -t "BTFO";;
	"Reboot") reboot;;
	"Shutdown") shutdown now;;
esac
