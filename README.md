 -*- mode: org -*-
* Introduction
  This repository contains the configuration files needed for a i3wm setup with the
  an i3blocks status bar and a polybar status bar.
  By default the polybar is enabled.
* Required Packages
  For all the scripts and configuration files to work, the following packages need to be installed.
  1. yad
  2. i3
  3. polybar
  4. xdotool
  5. i3-gaps
  6. rofi
  7. feh
  8. emacs
  9. python-dbus
  10. plasma-browser-integration
  11. sxiv
  12. zathura
  13. ranger
  14. xterm
  15. terminator
  16. fish

  Use the the command to install all these packages in emacs 
  =sudo apt install yad i3 polybar i3-gaps rofi feh xdotool emacs
  python-dbus plasma-browser-integration sxiv zathura ranger xterm
  terminator fish
** Workspace handling 
   install i3-resurrect to save the workspace and autoload them
   =i3-resurrect save --swallow=class,instance -d .config/i3-resurrect/
   -p 'wk3'=
   where wk3 is the the workspace 
* Steps needed to get display work properly
  write the following to  ~/.Xresources
  Xft.dpi: 180
  Xft.autohint: 0
  Xft.lcdfilter:  lcddefault
  Xft.hintstyle:  hintfull
  Xft.hinting: 1
  Xft.antialias: 1
  Xft.rgba: rgb
* Media Control Script
  The  media control script is a modification of    
  [[https://github.com/haideralipunjabi/polybar-browsermediacontrol]]
