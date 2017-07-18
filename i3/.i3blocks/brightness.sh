#!/bin/bash

if [ $BLOCK_BUTTON -eq 1 ]; then
  xbacklight -set 20
elif [ $BLOCK_BUTTON -eq 3 ]; then
  i3-msg exec "urxvt -name scratch --hold -e xrandr" > /dev/null
elif [ $BLOCK_BUTTON -eq 4 ]; then
  xbacklight -inc 10
elif [ $BLOCK_BUTTON -eq 5 ]; then
  xbacklight -dec 10
fi

PERC=$(xbacklight)

PERC=$(printf "%.0f" ${PERC})

echo "<span color='gold' font_weight='bold'></span> ${PERC}%"
