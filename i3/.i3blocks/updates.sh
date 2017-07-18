#!/bin/bash

if [ $BLOCK_BUTTON -eq 1 ]; then
  i3-msg exec "urxvt -name scratch -e pacaur -Syu" > /dev/null
fi

NO=$(checkupdates | wc -l)

if [ $NO = 0 ]; then
  COLOR="lime green"
elif [ $NO -le 30 ]; then
  COLOR="golden rod"
else
  COLOR="red"
fi

echo "<span color='${COLOR}'></span>  ${NO}"
