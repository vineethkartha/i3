# https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/popup-calendar/popup-calendar.sh

#!/bin/bash

YAD_WIDTH=222  
YAD_HEIGHT=100 
DATE="$(date +"%a %d, %m %I:%M %p")"
pos_x=2000
pos_y=2000
case "$1" in
--popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi
    yad --calendar --undecorated --fixed  --no-buttons --width=$YAD_WIDTH --height=$YAD_HEIGHT --title="yad-calendar" --mouse  >/dev/null &
    ;;
*)
    echo "$DATE"

    ;;
esac
