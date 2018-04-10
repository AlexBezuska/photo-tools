# Photo Tools


#### `extract-photos.sh` (Coming soon)

Utility which dives recursively into a directory looking for all photos (example: an Apple iPhoto/Photos library) and moves them to another folder


#### `rename-photos.sh`

Utility to rename all photos in a given folder to include cameraname and date each photo was taken.

##### Usage:

```
sh rename-photos.sh /my/folder/
```


#### `delete-small-images.sh`

This is mainly for removing some odd thumbnails and previews left over from the photo library software I used to use.

##### Usage:

```
sh delete-small-images.sh /my/folder/
```


#### `organize-photos.sh` (Coming soon)

*requires filename format from `rename-photos.sh`
Utility that sorts photos into folders based on year and month they were taken
