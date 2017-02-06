#!/bin/bash

no="$(checkupdates | wc -l)"

green="#31a354"
yellow="#d7a645"
red="#e31a1c"

if [ $no = 0 ]; then
    echo "%{F$green u$green +u}  %{F-} $no %{u- -u}"
elif [ $no -le 10 ]; then
    echo "%{F$yellow u$yellow +u}  %{F-} $no %{u- -u}"
else
    echo "%{F$red u$red +u}  %{F-} $no %{u- -u}"
fi
