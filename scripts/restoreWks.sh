#/bin/bash

# The workspace layouts were saved with
# i3-resurrect save --swallow=class,instance -d .config/i3-resurrect/ -p 'wk1'
# i3-resurrect save --swallow=class,instance -d .config/i3-resurrect/ -p 'wk2'


i3-resurrect restore -p 'wk1' -d .config/i3-resurrect/ -w '1: '
i3-resurrect restore -p 'wk3' -d .config/i3-resurrect/ -w '3: '
