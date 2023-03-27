#!/bin/sh

# Key mapping
setxkbmap latam -option caps:swapescape & # Key map with caps and scape alternate


# Resolution
xrandr --output eDP-1 --primary --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-1 --off

#System Icons

#Usb
udiskie -t &

#Network manager
nm-applet &

#Volume
volumeicon &

#Battery
cbatticon -u 5 &

#Wallpaper
# nitrogen --restore &

# Live Wallpaper
xwinwrap -ov -g 1600x900+0+0 -- mpv -wid WID ~/.dotfiles/wallpapers/live/Chill-wallpaper.mp4 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings &

#Picom
picom --vsync --backend glx --xrender-sync-fence &

# Conky
# conky --pause=3 &

# A kitty shell with some application
# kitty -e zsh -c 'neofetch;zsh -i' &
