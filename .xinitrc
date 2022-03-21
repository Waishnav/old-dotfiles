#!/bin/sh
source ~/.xprofile

xset r rate 400 48
xsetroot -cursor_name left_ptr

exec bspwm
#exec ~/.config/chadwm/scripts/./autostart
