#!/bin/sh
$(maim -s | convert - \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage shadow.png && notify-send   -t 150 "  ")
