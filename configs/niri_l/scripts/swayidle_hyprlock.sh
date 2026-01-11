#!/bin/sh
swayidle -w \
	timeout 300 'hyprlock' \
	timeout 500 'niri msg action power-off-monitors' \
	resume 'niri msg action power-on-monitors' \ 
	before-sleep 'hyplock'
