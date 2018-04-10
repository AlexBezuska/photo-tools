#!/bin/sh

# This script uses gmv which is part of `coretils` (install via homebrew) on Mac OS, if you are on Linux you can change all instances of `gmv` to `mv`

photoDestination='/path/to/photos/'
videoDestination='/path/to/photos/'

if [ -z "$1" ]; then
  echo "Please add a path to a folder containing images\n Example: \n sh extract-photos.sh /original/folder/ \n"
else

# This could be done much better 
find "${1}" -name '*.jpg' -exec gmv -v {} $photoDestination \;
find "${1}" -name '*.JPG' -exec gmv -v {} $photoDestination \;
find "${1}" -name '*.jpeg' -exec gmv -v {} $photoDestination \;
find "${1}" -name '*.png' -exec gmv -v {} $photoDestination \;
find "${1}" -name '*.PNG' -exec gmv -v {} $photoDestination \;


find "${1}" -name '*.mov' -exec gmv -v {} $videoDestination \;
find "${1}" -name '*.MOV' -exec gmv -v {} $videoDestination \;
find "${1}" -name '*.mp4' -exec gmv -v {} $videoDestination \;
find "${1}" -name '*.m4v' -exec gmv -v {} $videoDestination \;
find "${1}" -name '*.avi' -exec gmv -v {} $videoDestination \;
find "${1}" -name '*.AVI' -exec gmv -v {} $videoDestination \;
