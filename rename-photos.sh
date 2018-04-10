#!/bin/sh

# This script requires exiftool

if [ -z "$1" ]; then
  echo "Please add a path to a folder containing images\n Example: \n sh rename-photos /my/folder/ \n"
else

  ## rename photos to include cameraname and date photo was taken
  exiftool '-filename<${datetimeoriginal} ${model;}.%e' -d "%Y-%m-%d %H.%M.%S%%-c" "${1}"

fi
