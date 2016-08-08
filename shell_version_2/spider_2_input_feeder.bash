#!/bin/bash
while read -r line || [[ -n "$line" ]]; do
    echo "Text read from file:$line" &
    ./spider_2.bash $line >> spider_2_output/$line
done < "$1"
