while true
do
    sleep 1s
    displayport="$(xrandr --query | grep -o "HDMI-1 connected" | cut -d " " -f 1)"
    if [ -n "$displayport" ]; then
        bspc monitor HDMI-1 -d 1 2 3 4 5
        bspc monitor LVDS-1 -d 6 7
        xrandr --output LVDS-1 --off --output HDMI-1 --primary --mode 1366x768 --pos 0x0 -- rotate normal
    else
        bspc monitor LVDS-1 -d 1 2 3 4 5
        bash ~/.screenlayout/normal_profile.sh
    fi
done


