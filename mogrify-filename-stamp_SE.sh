#!/bin/bash

# label with filename at SE corner, bellow tablet's label
# and move them to created directory

# David A. Davim
# 20180802 v1


# create sub-directory to store mogrified files
mkdir -p labeled

for i in  `ls *jpg`
do
  # warning filename processing
  echo "processing $i"
  # annotate filename onto file with the same yellow color as the tablet photos
  mogrify -fill "#f5dc47ff" -pointsize 50 -gravity Southeast -annotate +2+2 %t *.jpg
done
# move files to created directory
mv *.jpg ./labeled
