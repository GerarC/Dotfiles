#!/bin/sh
killall mpv
killall xwinwrap
xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID ~/.dotfiles/wallpapers/live/Chill-wallpaper.mp4 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings &
