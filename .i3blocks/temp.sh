#!/bin/bash

if [ $BLOCK_BUTTON -eq 1 ]; then
  i3-msg exec "urxvt -name scratch --hold -e sensors" > /dev/null
fi

TEMP=$(sensors | grep "Package" | grep -wo '[0-9][0-9]')

echo "<span color='peru'></span>  ${TEMP}°C"
