# ytconv

Download YT vids using ffmpeg and youtube-dl

## Installation

Download and put them somewhere (e.g. D:\bin) and add them to PATH environment variable

* [ffmpeg (static)](https://www.ffmpeg.org/download.html)
* [youtube-dl](https://rg3.github.io/youtube-dl/download.html)

Move ytconv.bat to wherever you want to open cmd from (e.g. desktop)

Change <path/to/directory> to desired download folder

## Usage

Open cmd in ytconv.bat directory

shift + right click directory > open command window here

```
ytconv "yt_link" "file_name" start_time duration
```

```
ytconv "youtube.com/video&playlist" "Happy Birthday" 0:05 1:30
```

```
ytconv "youtube.com/video" "Happy Birthday" 0:05 1:30
```
