#!/bin/bash

cwd="$(pwd)"

nano input.txt

links="/tmp/$(date).txt"
parse_youtube_urls.py > "$links"
rm input.txt

while read line
do
    name=$(echo $(youtube-dl-patched -e "$line").mp4);
    parsed_name=$(echo $(echo $name|sed 's/"/\\"/g'));
    parsed_name=$(echo $(echo $parsed_name|sed 's/:/-/g'));
    echo $parsed_name;
    dummy_url=$(youtube-dl-patched -g  "$line");
    path="$cwd/$parsed_name"
    filesize=$(youtube-dl-patched --get-filesize "$line");
    if [ ! -f "$path" ];
    then
        echo $path
        #mcurl-patched --parts 50 --filesize $filesize --output "$path"  $dummy_url &
        wget -c --no-verbose $dummy_url -O "$path"&
        #aria2c -c -m0 -s10 -o "$path" $dummy_url &
    fi
done < "$links"

rm "$links"
