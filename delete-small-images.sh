#!/bin/sh

# set your desired minimum sizes here
minWidth=768
minHeight=768

# Check imagemagick is installed
# http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
command -v convert >/dev/null 2>&1 || { echo >&2 "I require imagemagick but it's not installed.  Aborting."; exit 1; }


if [ -z "$1" ]; then
  echo "Please add a path to a folder containing images\n Example: \n sh delete-small-images /my/folder/ \n"
else

  images=0
  deletedImages=0

  for fname in "${1}"*
  do
    images=$[$images+1]
    width=`identify -format "%w" "${fname}"`
    height=`identify -format "%h" "${fname}"`
    echo "$images ${fname} – $width x $height"
    if [ -z $width ] || [ -z $height ]; then
      continue
    fi
    if [ $width -lt $minWidth ] || [ $height -lt $minHeight ]; then
      echo "\n Deleting $fname"
      rm "${fname}"
      deletedImages=$[$deletedImages+1]
    fi
  done
    echo "\n All done. $deletedImages/$images in $1 deleted because they were under $minWidth x $minHeight!\n"
fi
