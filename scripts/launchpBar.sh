#!/bin/bash

#polybar-msg cmd quit
killall -q polybar

polybar -c /home/vineeth/.config/i3/polybar.config top >>/tmp/polybar.log 2>&1&

