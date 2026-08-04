#!/bin/bash

pgrep -x swaync >/dev/null || swaync &

if pgrep -x waybar >/dev/null; then
    pkill waybar
else
    waybar &
fi