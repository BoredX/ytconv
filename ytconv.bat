@echo off
setlocal EnableDelayedExpansion

if "%~4"=="" goto usage

set yt_link=%1
set file_name=%2
set time_start=%3
set time_duration=%4
set endtext=!yt_link:*^&=^&!

if /i "!endtext:~0,1!" NEQ "&" goto next
rem If a playlist link, trim it
set "yt_link=!yt_link:%endtext%=!""
echo !yt_link!

:next

rem Run youtube-dl
FOR /F "tokens=* USEBACKQ" %%F IN (`youtube-dl.exe -f 140 -g !yt_link!`) DO (
SET direct_link=%%F
)

ffmpeg.exe -y -ss 0:%time_start%.00 -i !direct_link! -t 00:%time_duration%.00 -c:v copy -c:a copy "<path/to/directory>\\%file_name%.m4a" 

goto :end

:usage

echo Usage: ytconv "yt_link" "file_name" start_time duration
echo   e.g. ytconv "youtube.com/video&playlist" "Happy Birthday" 0:05 1:30

:end
endlocal