#!/bin/sh
OC=matterhorn-develop
TMPFILE=dutoplist-sizes
FILE=dutoplist

git clone git@bitbucket.org:opencast-community/matterhorn.git -b develop $OC
find $OC -type f -exec du {} \; > $TMPFILE
sort $TMPFILE -h > $FILE
