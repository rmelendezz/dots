#!/usr/bin/env bash
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload barra1 &
    MONITOR=$m polybar --reload barra2 &
done
