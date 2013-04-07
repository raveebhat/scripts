#! /bin/bash

# converts video files to .ogg audio format
# uses ffmpeg and requires libvorbis installed

#read part of filename
filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"

#convert to ogg using ffmpeg
ffmpeg -i $1 filename.mp3 && ffmpeg -i filename.mp3 -acodec libvorbis ${filename}.ogg && rm filename.mp3
