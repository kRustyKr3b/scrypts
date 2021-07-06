#!/bin/sh
echo $(cat /sys/class/backlight/amdgpu_bl0/brightness) > BRIGHTNESS
