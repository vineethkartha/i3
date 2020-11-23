#!/bin/bash
#connect=$(nmcli network connectivity)
#if [ "$connect" = "full" ]; then
#    echo ""
#else
#    echo ""
#fi
status=$(nmcli radio wifi)
if [ "$status" = "enabled" ]; then
    echo " "
else
    echo " "
fi

# Toggle the wifi connectivity
if [ "$1" = "togglewifi" ]; then
    if [ "$status" = "enabled" ]; then
	nmcli radio wifi off
	    notify-send "Wifi disabled"
    else
	nmcli radio wifi on
	notify-send "Wifi enabled"
    fi
fi

