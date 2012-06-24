#Scripts to make life more beautiful

##Youtube Downloader
###Install scripts
git clone https://github.com/psjinx/scripts.git && cd scripts && ./install.sh
###Try to download youtube videos
#####Download single youtube videos
cd ~/ && yd "http://www.youtube.com/watch?v=YR12Z8f1Dh8"

Above command will download "Why This Kolaveri Di Full Song Promo Video in HD.mp4"
in your home folder.

####Download multiple videos at once
You will need to install beautifulsoup, a python package for parsing html.

sudo pip install beautifulsoup

To download multiple videos, please follow following steps

- Right click on youtube page and select inspect element.
- Select an html element which contains all youtube videos.
- Right click on that particular element and select "copy as html".
- In any directory run ymd command in terminal, it will open nano editor, paste html here, save and quit nano (Ctrl+o followed by Ctrl+x).
- Download will be started.

#####Download mp3 audio of youtube videos
cd ~/ && ymp3 "http://www.youtube.com/watch?v=YR12Z8f1Dh8"
