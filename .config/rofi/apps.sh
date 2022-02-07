xdotool search --sync --syncsleep 50 --limit 1 --class Rofi \
    keyup --delay 0 Alt+Tab \
    key --delay 0 Alt+Tab \
    keyup --delay 0 Alt+Shift+Tab \
    keydown --delay 0 Alt+Shift+Tab &
path="~/.config/rofi/blurry2.rasi"

options="\
       -kb-cancel "Super+Escape,Escape" \
       -kb-accept-entry "!Super-Tab,Return"\
       -kb-row-down "Super+Tab,Super+j,Alt+ISO_Left_Tab" \
       -kb-row-up "Super+Shift+Tab,Super+k""

rofi -show drun -theme $path

