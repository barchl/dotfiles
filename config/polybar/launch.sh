#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar main &
polybar bottom &
polybar extern_monitor &

echo "Bars have liftoff..."
