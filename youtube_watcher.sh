#!/bin/bash

http_proxy="http://144.16.192.216:8080"
https_proxy="http://144.16.192.216:8080"

if [ -z "$1" ]; then
    echo "Provide a youtube video url "
else
    declare -A dummy_url
    dummy_url=$(youtube-dl -g --cookies /tmp/youtube_cookie.txt "$1")
    mplayer -fs -cookies -cookies-file /tmp/youtube_cookie.text "$dummy_url" -volume 100 -cache 500 -cache-min 99
    #cvlc --http-proxy=$http_proxy "$dummy_url"
fi
