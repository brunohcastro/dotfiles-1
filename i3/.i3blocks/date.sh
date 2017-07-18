#!/bin/bash

if [ $BLOCK_BUTTON -eq 1 ]; then
  i3-msg exec "urxvt -name scratch --hold -e cal -3" > /dev/null
fi

echo "<span color='peru'></span>  $(date '+%a %d')"
