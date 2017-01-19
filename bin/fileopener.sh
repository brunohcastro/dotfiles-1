#!/bin/bash

# A script to integrate Firefox and Ranger.
# From Firefox, choose Open With and choose this script.

name="$1"
urxvt -e ranger ${name:7}
