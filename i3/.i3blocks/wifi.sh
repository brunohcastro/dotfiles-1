#!/bin/bash

if [[ "$(cat /sys/class/net/wlp5s0/operstate)" = 'down' ]]; then
  if [ $BLOCK_BUTTON -eq 1 ]; then
    i3-msg exec "urxvt -name scratch -e sudo wifi-menu" > /dev/null
  fi
  COLOR=red
  TEXT=down
else
  COLOR='lime green'
  if [ $BLOCK_BUTTON -eq 1 ]; then
    TEXT=$(hostname -i)
  else
    QUALITY=$(cat /proc/net/wireless | grep -o "\-[0-9]\+\." | grep -o "\-[0-9]\+")
    TEXT="${QUALITY} dBm"
  fi
fi

echo "<span color='${COLOR}'></span>  ${TEXT}"
