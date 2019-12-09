#!/bin/bash

filename=$1

image=`echo "$filename" | grep -E -c -i "^.*\.(jpg|png|bmp)$"`
document=`echo "$filename" | grep -E -c -i "^.*\.(py|c|c++|cpp|java)$"`
page=`echo "$filename" | grep -E -c -i "^.*\.(html)$"`
media=`echo "$filename" | grep -E -c -i "^.*\.(mp3|wav|mp4|flv)$"`

if [[ $image -ge 1 ]] ; then
	`eog "$filename"`
elif [[ $document -ge 1 ]] ; then
	`gedit "$filename"`
elif [[ $page -ge 1 ]] ; then
	`firefox "$filename"`
elif [[ $media -ge 1 ]] ; then
	`vlc "$filename"`
else
	`xdg-open "$filename"`
fi
	
