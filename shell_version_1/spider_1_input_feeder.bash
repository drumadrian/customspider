#!/bin/bash
while read -r line || [[ -n "$line" ]]; do
    echo "Text read from file:$line" &
    ./spider_1.bash $line
done < "$1"

