#!/bin/bash
$(pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send "$(pactl list sources | grep Mute | cut -z -f3 )")
