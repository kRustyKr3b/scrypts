#!/bin/sh
echo $(cat BRIGHTNESS) > /sys/class/backlight/amdgpu_bl0/brightness
