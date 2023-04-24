#!/bin/bash

win=$(/usr/local/bin/yabai -m query --windows --window last | /usr/local/bin/jq '.id')

while : ; do
    /usr/local/bin/yabai -m window $win --swap prev &> /dev/null
    if [[ $? -eq 1 ]]; then
        break
    fi
done
