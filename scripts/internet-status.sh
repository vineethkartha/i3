#!/bin/bash
connect=$(nmcli network connectivity check)
if [ "$connect" = "full" ]; then
    echo ""
else
    echo ""
fi

