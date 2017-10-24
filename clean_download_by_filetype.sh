#!/bin/bash

echo "Starting Cleanup Script"

cd ~/Downloads

for file in ~/Downloads/*.*
do
  extension="${file##*.}"

  if [ ! -d "$extension" ];
  then
    echo "Making directory $extension"
    mkdir $extension
  else
    echo "Directory $extension exists"
  fi

  echo "Attempting to move $file to $extension"
  mv "$file" ~/Downloads/$extension


done

echo "Finished. All files have been moved to folders"
