#!/bin/bash

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    name=$(echo $(youtube-dl-patched -e "$1").mp4);
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $parsed_name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl-patched -g  "$1");
    filesize=$(youtube-dl-patched --get-filesize "$1")
echo $filesize;
    #mcurl-patched -p 50 --filesize $filesize -o "$parsed_name" "$dummy_url" &
    wget -c --verbose "$dummy_url" -O "$parsed_name"&
    #aria2c --summary-interval=0 show-console-readout=false -c -m0 -s10 $(echo dummy_url) -o "$parsed_name"&
    #aria2c  -c -m0 -s10 -o "$parsed_name" $dummy_url&
fi
