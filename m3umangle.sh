#!/bin/bash

# m3umangle.sh 
# 2017 Lloyd W. Slade
# 

m3umangle=""
# Set your music library path here
musicdir="/Volumes/itunes/Music/"

# Use second argument to specify an arbitrary destination path
if [[ "$2" != "" ]];
then
    walkman="$2"
else
    walkman="/Volumes/WALKMAN/MUSIC/"
fi

# Paths with spaces can get funky 
SAVE_IFS="$IFS"
IFS=_

# Read each line, ignore lines with M3U data and no path,
# then write new destination path and copy file there
while read line; do
	if echo $line | grep "^[^#;]"; then
	m3umangle=$(echo $line | sed -e "s|$musicdir|$walkman|")
	mkdir -p $(dirname $m3umangle)
	cp "$line" "$m3umangle"
fi
done < $1
IFS=$SAVE_IFS

# Make new playlist file with correct path for device
sed "s|\/Volumes\/itunes\/Music\/||" $1 > wm-$1
