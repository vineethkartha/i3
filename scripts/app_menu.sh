
# script taken from https://github.com/adi1090x/polybar-themes/blob/master/polybar-1/scripts/menu
#!/bin/bash

# Custom Rofi Script

BLACK="#000000"
WHITE="#ffffff"
RED="#e53935"
GREEN="#43a047"
YELLOW="#fdd835"
BLUE="#1e88e5"
MAGENTA="#00897b"
CYAN="#00acc1"
PINK="#d81b60"
PURPLE="#8e24aa"
INDIGO="#3949ab"
TEAL="#00897b"
LIME="#c0ca33"
AMBER="#ffb300"
ORANGE="#fb8c00"
BROWN="#6d4c41"
GREY="#757575"
BLUE_GREY="#546e7a"
DEEP_PURPLE="#5e35b1"
DEEP_ORANGE="#f4511e"
LIGHT_BLUE="#039be5"
LIGHT_GREEN="#7cb342"

BORDER="#1F1F1F"
SEPARATOR="#1F1F1F"
FOREGROUND="#FFFFFF"
BACKGROUND="#2f343f"
BACKGROUND_ALT="#2f343f"
HIGHLIGHT_BACKGROUND=$WHITE
HIGHLIGHT_FOREGROUND=$BACKGROUND

# Launch Rofi
rofi -no-lazy-grab -show drun \
-display-drun "Applications :" -drun-display-format "{name}" \
-hide-scrollbar true \
-bw 0 \
-lines 10 \
-line-padding 10 \
-padding 20 \
-width 30 \
-xoffset 68 -yoffset -70 \
-location 0 \
-columns 2 \
-show-icons -icon-theme "Papirus" \
-font "Monospace 20" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND"

# More Options
# -fullscreen \

# Theming help
# color window = background, border, separator
# color normal = background, foreground, background-alt, highlight-background, highlight-foreground
# color active = background, foreground, background-alt, highlight-background, highlight-foreground
# color urgent = background, foreground, background-alt, highlight-background, highlight-foreground
