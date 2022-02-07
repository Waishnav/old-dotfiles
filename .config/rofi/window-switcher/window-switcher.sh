#!/usr/bin/env bash
xdotool search --sync --syncsleep 50 --limit 1 --class Rofi \
    keyup --delay 0 Alt+Tab \
    key --delay 0 Alt+Tab \
    keyup --delay 0 Alt+Shift+Tab \
    keydown --delay 0 Alt+Shift+Tab &
#theme1="box1.rasi"
#theme2="box2.rasi"
path="~/.config/rofi/window-switcher/box.rasi"
result="$(xprop -root _NET_CLIENT_LIST)"
options="\
       -kb-cancel "Alt+Escape,Escape" \
       -kb-accept-entry "!Alt-Tab,Return,!Alt-l,!Alt-h"\
       -kb-row-down "Alt+Tab,Alt+l,Alt+ISO_Left_Tab" \
       -kb-row-up "Alt+Shift+Tab,Alt+h""
no_of_window=0
for x in $result
do
   if [[ "$x" == *'x'* ]];
    then
        ((no_of_window+=1))
    fi
done
#rofi -no-lazy-grab -show drun -modi drun -icon-theme "Adwaita"
if [[ $no_of_window = 1 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 10 $options
elif [[ $no_of_window = 2 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 18 $options
elif [[ $no_of_window = 3 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 28 $options
elif [[ $no_of_window = 4 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 37 $options
elif [[ $no_of_window = 5 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 45 $options
elif [[ $no_of_window = 6 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 55 $options
elif [[ $no_of_window = 7 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 60 $options
elif [[ $no_of_window = 8 ]]; then
    rofi -no-lazy-grab -show window -icon-theme "Papirus" -theme $path -width 70 $options
else
 rofi -show window -theme $path -width 100 $options
fi
