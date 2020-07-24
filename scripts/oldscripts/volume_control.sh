#!/bin/bash
vol=$(amixer -D pulse get Master | awk -F 'Left:|[][]' 'BEGIN {RS=""}{ print $3 }');
mute=$(amixer -D pulse get Master | awk -F 'Left:|[][]' 'BEGIN {RS=""}{ print $5 }');
volVal=${vol::-1}
highVol=$(echo "$volVal>80"|bc)

if [ "$mute" = "on" ]; then
    if [ $highVol -eq 1 ];then
	echo " $vol"
    else
	echo " $vol"
    fi
else
    echo " x"
fi
