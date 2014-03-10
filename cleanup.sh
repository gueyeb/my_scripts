#!/bin/bash

## 10-03-2014
# replaced dash (sh) shell by bash.

## cleanup.sh for gueye_b in /home/gueye_b/Documents/Scripts
## 
## Made by babacar gueye
## Login   <gueye_b@epitech.net>
## 
## Started on  Sat Jul 13 19:42:34 2013 babacar gueye
## Last update Mon Mar 10 17:07:42 2014 babacar gueye
##

#!/bin/bash

# This script can clean up files that were last accessed over 365 days ago.

USAGE="Usage: $0 dir1 dir2 dir3 ... dirN"

if [ "$#" == "0" ]; then
    echo "$USAGE"
    exit 1
fi

while (( "$#" )); do

if [[ $(ls "$1") == "" ]]; then 
    echo "Empty directory, nothing to be done."
  else 
    find "$1" -type f -a -atime +365 -exec rm -i {} \;
fi

shift

done