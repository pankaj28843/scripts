#!/bin/bash

export http_proxy="http://10.3.100.212:8080"
export https_proxy="http://10.3.100.212:8080"

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    name=$(echo $(youtube-dl -e "$1").mp4);
    dummy_url=$(youtube-dl -g  "$1");

    echo $dummy_url

    mcurl -p 20 -v -o $name "$dummy_url"&
    #wget -c --no-verbose "$dummy_url" -O "$name"&
    #aria2c --summary-interval=0 show-console-readout=false -c -m0 -s10 $(echo dummy_url) -o "$name"&
    #aria2c  -c -m0 -s10 -o "$name" $dummy_url&
fi
