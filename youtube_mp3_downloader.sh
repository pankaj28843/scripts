#!/bin/bash

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    name=$(echo $(youtube-dl -e "$1").mp3);
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $parsed_name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl -g  "$1");
    ffmpeg -i "$dummy_url" "$parsed_name"
fi
