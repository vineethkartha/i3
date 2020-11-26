#!/bin/bash

if curl -s --head  --request GET www.google.com | grep "200 OK" > /dev/null ; then
    echo " "
else
    echo " "
    notify-send "Not connected to Internet"
fi
#connect=$(nmcli network connectivity check)
#if [ "$connect" = "full" ]; then
#    echo ""
#else
#    echo ""
#    notify-send "The connection seems to be weak"
#fi

