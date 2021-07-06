#!/bin/sh
$(maim -i $(xdotool getactivewindow) | tee ~/Screenshots/$(date +%s).png | xclip -selection clipboard -t image/png && notify-send -t 150 "  ")
