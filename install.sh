#!/bin/sh

git submodule init
git submodule update

mkdir -p ~/bin
cwd="$(pwd)"

cp -f $cwd/mcurl ~/bin/mcurl-patched
cp -f $cwd/parse_youtube_urls.py ~/bin/parse_youtube_urls.py
cp -f $cwd/youtube_downloader.sh ~/bin/yd
cp -f $cwd/youtube_multi_downloader.sh ~/bin/ymd
cp -f $cwd/youtube_watcher.sh ~/bin/ywatch
cp -f $cwd/youtube_mp3_downloader.sh ~/bin/ymp3