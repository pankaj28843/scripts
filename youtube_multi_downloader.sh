#!/bin/bash

cwd="$(pwd)"

nano input.txt

links="/tmp/$(date).txt"
parse_youtube_urls.py > "$links"
rm input.txt

while read line
do
    name=$(echo $(youtube-dl -e "$line").mp4);
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $parsed_name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl -g  "$line");
    path="$cwd/$parsed_name"
    if [ ! -f "$path" ];
    then
        echo $path
        wget -c --no-verbose $dummy_url -O "$path"&
    fi
done < "$links"

rm "$links"
