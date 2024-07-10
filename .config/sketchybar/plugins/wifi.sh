#!/usr/bin/env sh

SSID=$(networksetup -getairportnetwork en0 | sed -n "s/Current Wi-Fi Network: \(.*\)/\1/p")

sketchybar --set $NAME label="${SSID}"
