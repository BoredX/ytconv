# ytconv

Download YT vids using ffmpeg and youtube-dl

## Installation

Download and add their .exes to PATH environment variable

* [ffmpeg (static)](https://www.ffmpeg.org/download.html) - ffmpeg-3.3.2-win64-static/bin/ffmpeg.exe
* [youtube-dl](https://rg3.github.io/youtube-dl/download.html)

Move ytconv.bat to wherever you want to open cmd from

## Usage

Open cmd in ytconv.bat directory and type

```
ytconv "yt_link" "file_name" start_time duration
```

```
ytconv "youtube.com/video&playlist" "Happy Birthday" 0:05 1:30
```