#!/bin/bash
if [ "$1" = "default" ]; then
    noOfPackages=$(apt-get -s dist-upgrade | awk '/^Inst/ { print $2 }'|wc -l)
    echo $noOfPackages 
fi

if [ "$1" = "list" ]; then
    #listOfpackages=$(apt-get -s dist-upgrade | awk '/^Inst/ { print "TRUE " $2 " \\"}')
    list=$(apt-get -s dist-upgrade | awk '/^Inst/ { print "\n"  $2 }' | zenity --list  --column "No." --column "Packages")
fi

if [ "$1" = "update" ]; then
    pass=$(zenity --password)
    echo $pass | sudo -S apt-get upgrade -y
    #zenity --progress --title="Update System Logs" --text="Scanning mail logs..." --percentage=0
    zenity --info --text="Upgrade completed"
fi

