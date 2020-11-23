#!/bin/bash

#polybar-msg cmd quit
killall -q polybar

polybar -c /home/vineeth/.config/i3/polybar.config top >>/tmp/polybar.log 2>&1&
polybar -c /home/vineeth/.config/i3/polybar.config bottom >>/tmp/polybar.log 2>&1&

#polybar -c /home/vineeth/polybar-collection/nord/config.ini main 
