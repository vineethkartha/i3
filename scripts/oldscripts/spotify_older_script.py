# Script taken from https://github.com/firatakandere/i3blocks-spotify
#!/usr/bin/python

import dbus
import os
import sys


try:
    bus = dbus.SessionBus()
    spotify = bus.get_object("org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2")


    if os.environ.get('BLOCK_BUTTON'):
        control_iface = dbus.Interface(spotify, 'org.mpris.MediaPlayer2.Player')
        if (os.environ['BLOCK_BUTTON'] == '4'): #up scroll
            control_iface.Previous()
        elif (os.environ['BLOCK_BUTTON'] == '1'): #left click
            control_iface.PlayPause()
        elif (os.environ['BLOCK_BUTTON'] == '5'): # down scroll
            control_iface.Next()
    spotify_iface = dbus.Interface(spotify, 'org.freedesktop.DBus.Properties')
    props = spotify_iface.Get('org.mpris.MediaPlayer2.Player', 'Metadata')
    if (sys.version_info > (3, 0)):
        print(str(props['xesam:album'][0]) + " - " + str(props['xesam:title']))
    else:
        title ="";
        if(len(props['xesam:title']) > 40):
            title = props['xesam:title'][0:40]+" ..."
        else:
            title = props['xesam:title']
        print(props['xesam:album'] + " - " + title).encode('utf-8')
    exit
except dbus.exceptions.DBusException:
    exit


