#/bin/bash

# This script requires i3-resurrect to to be installed
# pip3 install --user --upgrade i3-resurrect
# The workspace layouts were saved with
# i3-resurrect save --swallow=class,instance -d ~/.config/i3-resurrect -p 'wk1'
# i3-resurrect save --swallow=class,instance -d ~/.config/i3-resurrect -p 'wk3'

i3-resurrect restore -p 'wk1' -d ~/.config/i3-resurrect -w '1:'
i3-resurrect restore -p 'wk3' -d ~/.config/i3-resurrect -w '3:﫮'
