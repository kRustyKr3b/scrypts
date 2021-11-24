#!/bin/sh

var=$(echo -e "Suspend\nExit i3\nReboot\nShutdown" | dmenu -fn 'Iosevka Term-9' -p "Action:")

case "$var" in 
	"Exit i3") i3-msg exit;;
	"Suspend") systemctl suspend & betterlockscreen -l;;
	"Reboot") reboot;;
	"Shutdown") systemctl poweroff;;
esac
