#!/bin/bash

cwd="$(pwd)"

http_proxy="http://10.3.100.212:8080"
https_proxy="http://10.3.100.212:8080"

gedit input.txt

links="/tmp/$(date).txt"
python ~/workspace/scripts/parse_youtube_urls.py > "$links"
rm input.txt

while read line
do
    name=$(echo $(youtube-dl -e "$line").mp4);
    dummy_url=$(youtube-dl -g  "$line");
    path="$cwd/$name"
    if [ ! -f "$path" ];
    then
        echo $path
        mcurl --parts 8 --output $name  $dummy_url &
        #wget -c --no-verbose $dummy_url -O "$path"&
        #aria2c -c -m0 -s10 -o "$path" $dummy_url &
    fi
done < "$links"

rm "$links"
