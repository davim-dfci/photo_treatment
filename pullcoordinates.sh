#!/bin/bash

# loop for all photos in directory and
# extract gps coordinates from metainfo

# 20180802 v1

# loop for all photos
for i in  `ls *jpg`
do
  # warning to user
  echo "processing $i"
  # identify and extract coordinates
  #identify -format "%[EXIF:*GPS*]" $i
  exiftool -gpslatitude -gpslongitude $i >> "$i.txt"
done

# create text file with identified coordinates & remove .txt files
grep GPS *.txt > coordinates.info
rm *.txt
