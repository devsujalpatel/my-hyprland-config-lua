#!/bin/bash

set -e

mkdir -p .config/{hypr,kitty,rofi,waybar,swaync}

rsync -av --delete \
  --exclude='clear/' \
  --exclude='.git/' \
  "$HOME/.config/hypr/" ".config/hypr/"

rsync -av --delete "$HOME/.config/kitty/" ".config/kitty/"
rsync -av --delete "$HOME/.config/rofi/" ".config/rofi/"
rsync -av --delete "$HOME/.config/waybar/" ".config/waybar/"
rsync -av --delete "$HOME/.config/swaync/" ".config/swaync/"
rsync -av --delete "$HOME/.config/wlogout/" ".config/wlogout/"
