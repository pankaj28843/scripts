#!/bin/bash

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    name=$(echo $(youtube-dl -e "$1").mp4);
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $parsed_name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl -g  "$1");
    aria2c  -c -k1M -x16 -s16 -j16 -o "$parsed_name" $dummy_url&
fi
