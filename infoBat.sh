#!/bin/sh
STATUS=$(acpi | awk '{print $3}')
[[ "$STATUS" == "Charging," ]] && echo "󰂉" || echo "󰁿" 
