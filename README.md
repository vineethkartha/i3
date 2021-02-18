* Introduction
  This repository contains the configuration files needed for a i3wm setup with the
  an i3blocks status bar and a polybar status bar.
  By default the polybar is enabled.

* Required Packages
  For all the scripts and configuration files to work, the following packages need to be installed.

	=sudo apt install yad=
	=sudo apt install i3=
	=sudo apt install polybar=
	=sudo apt install xdotool=
	=sudo apt install alacritty=
	=sudo apt install i3-gaps=
	=sudo apt install rofi=
	=sudo apt install feh=
	=sudo apt install emacs=
	=sudo apt install python-dbus=
* Steps needed to get display work properly
  write the following to  ~/.Xresources
  Xft.dpi: 180
  Xft.autohint: 0
  Xft.lcdfilter:  lcddefault
  Xft.hintstyle:  hintfull
  Xft.hinting: 1
  Xft.antialias: 1
  Xft.rgba: rgb



