#!/bin/bash
connect=$(nmcli network connectivity check)
if [ "$connect" = "full" ]; then
    echo ""
else
    echo ""
    notify-send "The connection seems to be weak"
fi

