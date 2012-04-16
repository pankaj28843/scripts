#!/bin/sh

mkdir -p ~/bin
cwd="$(pwd)"

rm --force ~/bin/mcurl-patched && ln -s $cwd/mcurl ~/bin/mcurl-patched
rm --force ~/bin/youtube-dl-patched && ln -s $cwd/youtube-dl ~/bin/youtube-dl-patched
rm --force ~/bin/parse_youtube_urls.py && ln -s $cwd/parse_youtube_urls.py ~/bin/parse_youtube_urls.py
rm --force ~/bin/yd && ln -s $cwd/youtube_downloader.sh ~/bin/yd
rm --force ~/bin/ymd && ln -s $cwd/youtube_multi_downloader.sh ~/bin/ymd
rm --force ~/bin/ywatch && ln -s $cwd/youtube_watcher.sh ~/bin/ywatch
