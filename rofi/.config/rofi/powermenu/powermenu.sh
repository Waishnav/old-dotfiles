#!/bin/bash

MESSAGE="What do you want to do "${USER^}"?"
POWER=""
RESTART=""
LOGOUT=""
LOCK=""
RES=`echo "$POWER|$RESTART|$LOGOUT|$LOCK" | rofi -dmenu -p "$MESSAGE" -sep "|" -theme powermenu -monitor -1`
[ "$RES" = "$POWER" ] && systemctl poweroff
[ "$RES" = "$RESTART" ] && systemctl reboot
[ "$RES" = "$LOGOUT" ] && bspc quit
[ "$RES" = "$LOCK" ] && sleep .2 && i3lock-fancy-dualmonitor
