#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
#xrandr --output eDP-1 --primary --mode 1920x1080 --output HDMI-1-0 --mode 1920x1080 --left-of eDP-1
feh --bg-fill ~/Pictures/wall/sushi.jpg
xset r rate 200 50 &
picom &
eww open eww &
/usr/lib/xdg-desktop-portal &
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY &
dash ~/.config/dwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
