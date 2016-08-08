#!/bin/bash
while read -r line || [[ -n "$line" ]]; do
    echo "Text read from file:$line" &
    wget --recursive $line
done < "$1"

