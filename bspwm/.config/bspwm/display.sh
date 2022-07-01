primary_display="$(xrandr --query | grep -o "HDMI-1 connected" |
if [ -n "$primary_display" ]; then
    primary_display = "HDMI-1"
    xrandr --output LVDS-1 --off --output VGA-1 --off --output HDMI-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP-1 --off

else
    primary_display = "LVDS-1"
fi
