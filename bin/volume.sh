#!/bin/bash

yellow="#d7a645"
purple="#756bb1"

if [ "$(pamixer --get-mute)" = "true" ]; then
   echo " %{F$yellow u$yellow +u}  (muted) %{F- u- -u}"
else
    volume="$(pamixer --get-volume)"
    if [ "$volume" == 0 ]; then
       echo -e "%{F$purple u$purple +u}  %{F-}$volume% %{u- -u}"
    elif [ "$volume" -lt 50 ]; then
       echo -e "%{F$purple u$purple +u}  %{F-}$volume% %{u- -u}"
    else
       echo -e "%{F$purple u$purple +u}  %{F-}$volume% %{u- -u}"
    fi
fi
