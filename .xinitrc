#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx.

export BG_DIR="$HOME/images/bg"
export CURR_BG="$BG_DIR/bluesky.jpg"

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# set background image:
feh --bg-scale $CURR_BG

# reload wal colorscheme
wal -R

# slow down cursor, make cursor
# xsetroot -cursor_name left_ptr
# xset m 1/5

# For BSPWM:
# sxhkd &
# exec bspwm

# For i3-gaps:
# exec i3

# Create consolekit session (gentoo only)
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3

