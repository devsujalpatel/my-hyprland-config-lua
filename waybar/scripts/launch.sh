#!/bin/bash

pgrep -x "waybar" >/dev/null && pkill waybar || waybar &
