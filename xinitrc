#!/bin/sh

cd ~
xset r rate 300 40

gpg-connect-agent UPDATESTARTUPTTY /bye &
# xautolock -time 10 -locker /home/alex/bin/lock &
dunst &
feh --bg-scale .wallpaper.png & 
bar loop &

while true; do 
    picom --experimental-backends
    sleep 1
done &

sxhkd &

xrdb ~/.Xresources

while [ ! -f ~/.wmlock ]; do
	dwm || exit
done

rm ~/.wmlock
