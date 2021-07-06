#!/bin/sh
state=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
synclient TouchpadOff="$state"
[[ "$state" -eq 1 ]] && notify-send "BLOCKED" || notify-send "UNBLOCKED"
