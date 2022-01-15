#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
#polybar top --config=~/.config/polybar/config.ini &
polybar top --config=~/.config/polybar/config.ini -r >>/tmp/polybar1.log 2>&1 & disown

external_monitor="$(xrandr --query | grep 'HDMI-1')"
if [[ $external_monitor = *connected* ]]; then
    polybar top_extrnl --config=~/.config/polybar/config.ini -r >>/tmp/polybar1.log 2>&1 & disown
fi
