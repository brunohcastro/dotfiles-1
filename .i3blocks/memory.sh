#!/bin/bash

if [ $BLOCK_BUTTON -eq 1 ]; then
  i3-msg exec "urxvt -name scratch -e htop" > /dev/null
fi

PERC=$(free -m -t | grep Mem | awk -F ' ' '{print int($3*100/$2)}')

if [[ ${PERC} -le 65 ]]; then
  COLOR="royal blue"
else
  COLOR="red"
fi

echo "<span color='${COLOR}'></span>  ${PERC}%"


