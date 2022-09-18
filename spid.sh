#!/bin/sh

spid=$(echo -e "1\n2\n3\nCLEAR\n4\n5" | rofi -dmenu -p "Spid:" -l 6)

case "$spid" in
	"CLEAR")sudo cpupower frequency-set -d 1.4GHz -u 2.7GHz -g schedutil && notify-send "FULL RANGE";;
	"1")sudo cpupower frequency-set -d 1.4GHz -u 1.8GHz -g powersave   && notify-send "SPID I";;
	"2")sudo cpupower frequency-set -d 1.4GHz -u 1.8GHz -g schedutil   && notify-send "SPID II";;
	"3")sudo cpupower frequency-set -d 1.8GHz -u 2.3GHz -g schedutil   && notify-send "SPID III";;
	"4")sudo cpupower frequency-set -d 1.8GHz -u 2.3GHz -g performance && notify-send "SPID IV";;
	"5")sudo cpupower frequency-set -d 2.3GHz -u 2.7GHz -g performance && notify-send "SPID V";;
esac

