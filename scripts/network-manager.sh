#!/bin/bash
connect=$(nmcli network connectivity)
if [ "$connect" = "full" ]; then
    echo ""
else
    echo ""
fi

# Toggle the wifi connectivity
if [ "$1" = "togglewifi" ]; then
    status=$(nmcli radio wifi)
    if [ "$status" = "enabled" ]; then
	nmcli radio wifi off
    else
	nmcli radio wifi on
    fi
fi

