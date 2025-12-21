#!/bin/bash

if pgrep -x "rofi" > /dev/null
then
    killall rofi
else
    ~/.config/rofi/launchers/type-4/launcher.sh
fi

