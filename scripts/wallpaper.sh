#!/bin/bash
mapfile -t images < <(find $HOME/Pictures/wallpapers/ -name "*.jpg")
#printf "%s\n" "${images[@]}"
count=$(ls ~/Pictures/wallpapers/ |wc -l)
count=$(echo "$count-1"|bc)
index=$(shuf -i 0-$count -n 1)
echo ${images[$index]}
feh --bg-scale ${images[$index]}

