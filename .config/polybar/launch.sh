#!/usr/bin/sh

dir="$HOME/.config/polybar"

killall polybar
while pgrep polybar; do killall polybar; done
polybar -q main -c "$dir/config.ini"

if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
  polybar -q second -c "$dir/config.ini" 
fi
