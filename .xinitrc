#!/bin/sh
#
#~/.xinitrc
#
# Executed by startx.

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#load ~/.Xresources
[[-f ~/.Xresources]] && xrdb -merge ~/.Xresources

#slow down cursor, make cursor
xsetroot -cursor_name left_ptr
xset m 1/5

#set background
feh --bg-scale ~/Pictures/arch_white.jpg 

sxhkd &
exec bspwm
