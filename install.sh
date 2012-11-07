#!/bin/sh

mkdir -p ~/bin
cwd="$(pwd)"

ln -sf $cwd/mcurl ~/bin/mcurl-patched
ln -sf $cwd/youtube-dl ~/bin/youtube-dl-patched
ln -sf $cwd/parse_youtube_urls.py ~/bin/parse_youtube_urls.py
ln -sf $cwd/youtube_downloader.sh ~/bin/yd
ln -sf $cwd/youtube_multi_downloader.sh ~/bin/ymd
ln -sf $cwd/youtube_watcher.sh ~/bin/ywatch
ln -sf $cwd/youtube_mp3_download.sh ~/bin/ymp3
