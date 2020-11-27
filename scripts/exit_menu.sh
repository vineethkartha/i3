#!/bin/bash

# Custom Rofi Script
# nord theme
polar_night1="#2E3440"
polar_night2="#3B4252"
polar_night3="#434C5E"
polar_night4="#4C566A"

snow_storm1="#D8DEE9"
snow_storm2="#E5E9F0"
snow_storm3="#ECEFF4"

frost1="#8FBCBB"
frost2="#88C0D0"
frost3="#81A1C1"
frost4="#5E81AC"

aurora_red="#BF616A"
aurora_amber="#D08770"
aurora_yellow="#EBCB8B"
aurora_green="#A3BE8C"
aurora_pink="#B48EAD"

BORDER=$polar_night1
SEPARATOR=$snow_storm3
FOREGROUND=$snow_storm1
BACKGROUND=$polar_night1
BACKGROUND_ALT=$polar_night2
HIGHLIGHT_BACKGROUND=$frost4
HIGHLIGHT_FOREGROUND=$aurora_red

# Launch Rofi
MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p "Uptime: $(uptime -p|awk  '{print $2 $3 $4 $5}')" -selected-row 1 \
-hide-scrollbar true \
-bw 0 \
-lines 1 \
-line-padding 50 \
-padding 50 \
-width 2500 \
-xoffset 0 -yoffset -100 \
-location 0 \
-columns 4 \
-font "JetBrainsMono 50" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$aurora_red,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$aurora_yellow,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
<<< " Lock| Logout| Restart| Shutdown")"
case "$MENU" in
  *Lock) /home/vineeth/.config/i3/scripts/lock.sh;;
  *Logout) i3-msg exit;;
  *Reboot) reboot ;;
  *Shutdown) shutdown now;;
esac

# More Options
# -fullscreen \

# Theming help
# color window = background, border, separator
# color normal = background, foreground, background-alt, highlight-background, highlight-foreground
# color active = background, foreground, background-alt, highlight-background, highlight-foreground
# color urgent = background, foreground, background-alt, highlight-background, highlight-foreground
