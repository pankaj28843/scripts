#!/bin/sh

mkdir -p ~/bin
cwd="$(pwd)"

rm -f ~/bin/mcurl-patched && ln -s $cwd/mcurl ~/bin/mcurl-patched
rm -f ~/bin/youtube-dl-patched && ln -s $cwd/youtube-dl ~/bin/youtube-dl-patched
rm -f ~/bin/parse_youtube_urls.py && ln -s $cwd/parse_youtube_urls.py ~/bin/parse_youtube_urls.py
rm -f ~/bin/yd && ln -s $cwd/youtube_downloader.sh ~/bin/yd
rm -f ~/bin/ymd && ln -s $cwd/youtube_multi_downloader.sh ~/bin/ymd
rm -f ~/bin/ywatch && ln -s $cwd/youtube_watcher.sh ~/bin/ywatch
rm -f ~/bin/ywatch && ln -s $cwd/youtube_mp3_download.sh ~/bin/ymp3
