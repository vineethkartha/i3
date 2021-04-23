#!/usr/bin/python3

# script from https://github.com/haideralipunjabi/polybar-browsermediacontrol
from pydbus import SessionBus
from gi.repository import GLib
import sys
import os
import argparse
import re

ICON_PLAY = "\uf04b"
ICON_PAUSE = "\uf04c"
ICON_NEXT = "\uf9ac"
ICON_PREV = "\uf9ad"
ICON = ""
ICON_MAIN = "\uf2ce"
PATH=os.path.realpath(__file__)
TITLE_LENGTH = 40
MEDIA_ICONS = {
    'amazon': '\uf52c',
    'spotify': '\uf1bc',
    'youtube': '\uf16a'
}
PATTERN = '(' + '|'.join(MEDIA_ICONS.keys()) + ')'
MEDIA_ICONS_REGEX = re.compile(PATTERN, re.MULTILINE)

parser = argparse.ArgumentParser()
parser.add_argument('--limit', type=int)
parser.add_argument('--volume', type=int)
parser.add_argument('--playpause', action="store_true")
parser.add_argument('--next', action="store_true")
parser.add_argument('--prev', action="store_true")
args= parser.parse_args()

bus = SessionBus()
try:
    Player = bus.get(
        "org.kde.plasma.browser_integration",
        "/org/mpris/MediaPlayer2"
    )
except GLib.Error:
    exit()

def action(command, text):
    return "%{A1:" + PATH + " --" + command + ":}" + text + "%{A}"

def truncate(text, max_len):
    return text[:max_len] + "..." if len(text) > max_len and max_len > 0 else text

def get_media_icon(url):
    match = MEDIA_ICONS_REGEX.findall(url)
    if match:
        if len(match) == 1:
            return MEDIA_ICONS[match[0]]
    return None

if Player.PlaybackStatus != "Stopped":
    if args.volume != None:
        vol = Player.Volume
        Player.Volume = vol + (args.volume * 0.1)
        exit()
    if args.playpause:
        Player.PlayPause()
        exit()
    if Player.PlaybackStatus=="Playing":
        ICON = ICON_PAUSE
    elif Player.PlaybackStatus=="Paused":
        ICON = ICON_PLAY
    if args.next:
        Player.Next()
    elif args.prev:
        Player.Previous()
    
    if args.limit:
        TITLE_LENGTH = args.limit

    totalLength = Player.Metadata["mpris:length"]
    currentPosition = Player.Position
    timeLeftToCompletion = (totalLength - currentPosition)/1000000
    mins,sec = divmod(timeLeftToCompletion,60)
    totalMins, totalSec = divmod(totalLength/1000000,60)
    remainingTime_print = "{:02.0f}".format(mins)+ ":" + "{:02.0f}".format(sec)
    totalTime_print = "{:02.0f}".format(totalMins)+ ":" + "{:02.0f}".format(totalSec)
    #percentComplete = "("+str(round((currentPosition/totalLength)*100,1)) + "%)"

    artist = Player.Metadata["xesam:artist"] + ": " 
    title = Player.Metadata["xesam:title"] 

    media_icon = get_media_icon(Player.Metadata["xesam:url"].lower())
    
    output = action("prev", ICON_PREV) + " " + action("playpause", ICON) + " " + action("next", ICON_NEXT) + " | " + remainingTime_print +"/" +totalTime_print + " | " + ( f"{media_icon}  " if media_icon else "" ) + artist +truncate(title, TITLE_LENGTH)
    print(output)
else:
    print("\uf2ce : No podcasts found")
