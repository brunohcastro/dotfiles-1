#!/bin/bash

if [ $1 == "--help" ]; then
    echo -e "Dependencies: bc\n\nUsage: round p x\nRounds x to the nearest 10^p."
    exit 0;
fi

p=$1
x=$2

if [ $p -le 0 ]; then
    p=$((-1*$p))
    echo $(printf "%.*f" $p $x)
else
    q=$(echo "scale=1; $x/10^$p" | bc)
    r=$(printf "%.0f" $q)
    echo $r*10^$p | bc
fi

