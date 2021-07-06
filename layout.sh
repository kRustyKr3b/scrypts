#!/bin/sh 
layout=$(xset -q | grep -A 0 'LED' | cut -c63-67 | cut -c1)
[[ "$layout" -eq 0 ]] && echo "US" || echo "MK" 
