#!/bin/bash

export http_proxy="http://10.3.100.212:8080"
export https_proxy="http://10.3.100.212:8080"

#sudo apt-get -y --print-uris -qq -f upgrade > "/home/psjinx/apt_upgrade_links"

links="/tmp/$(date).txt"



sudo apt-get -y --print-uris -qq -f upgrade | python /home/psjinx/workspace/scripts/parse_apt_links.py > "$links"

#cd /var/cache/apt/archives/

while read line
do
    echo $line
    sudo /home/psjinx/workspace/scripts/mcurl --parts 50 $line &
    sleep 1;
done < "$links"

rm "$links"

#sudo apt-get -f upgrade

