#!/bin/bash 
	batteryLevel=$(acpi | awk '{print $4}' | cut -d% -f1)
	batteryStatus=$(acpi | awk '{print $3}' | cut -d, -f1)
while true; do
	[[ "$batteryLevel" -le 15 && "$batteryStatus" -eq "Discharging" ]] && notify-send -u critical "$batteryLevel%"
	sleep 30 
done
