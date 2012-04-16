#!/bin/bash

export http_proxy="http://10.3.100.212:8080"
export https_proxy="http://10.3.100.212:8080"

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    name=$(echo $(youtube-dl-patched -e "$1").mp4);
    echo $name
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl-patched -g  "$1");
    filesize=$(youtube-dl-patched --get-filesize "$1")
echo $filesize;
    mcurl-patched -p 50 --filesize $filesize -o "$parsed_name" "$dummy_url" &
    #wget -c --no-verbose "$dummy_url" -O "$name"&
    #aria2c --summary-interval=0 show-console-readout=false -c -m0 -s10 $(echo dummy_url) -o "$name"&
    #aria2c  -c -m0 -s10 -o "$name" $dummy_url&
fi
