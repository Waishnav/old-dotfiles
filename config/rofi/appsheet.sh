#xdotool search --sync 50 --limit 1 --class Rofi \
#    key --delay 0 Alt+Tab \

path="~/.config/rofi/appsheet.rasi"

options="\
       -kb-cancel "Super+Escape,Escape" \
       -kb-accept-entry "!Super-Tab,Return"\
       -kb-row-down "Super+Tab,Super+j,Alt+ISO_Left_Tab" \
       -kb-row-up "Super+Shift+Tab,Super+k""

rofi -show drun -theme $path

