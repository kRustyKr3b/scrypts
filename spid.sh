#!/bin/sh

spid=$(echo -e "1\n2\n3\n4\n5" | dmenu -fn "Iosevka Term-9" -p "Spid:")

case "$spid" in
	"1")sudo cpupower frequency-set -d 1.4GHz -u 1.8GHz -g schedutil && notify-send "SPID I";;
	"2")sudo cpupower frequency-set -d 1.8GHz -u 2.3GHz -g schedutil && notify-send "SPID II";;
	"3")sudo cpupower frequency-set -d 2.3GHz -u 2.7GHz -g schedutil && notify-send "SPID III";;
	"4")sudo cpupower frequency-set -d 1.8GHz -u 2.3GHz -g performance && notify-send "SPID IV";;
	"5")sudo cpupower frequency-set -d 2.3GHz -u 2.7GHz -g performance && notify-send "SPID V";;
esac

