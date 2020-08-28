#!/bin/bash
connect=$(nmcli network connectivity)
if [ "$connect" = "full" ]; then
    echo ""
else
    echo ""
fi

