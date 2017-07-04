#!/bin/bash
START_DIRECTORY=$1

echo "I am the ihatedoc script."

for entry in $START_DIRECTORY*
do
  for filename in /$entry/*.docx;
  do
    echo "Converting $filename"
    pandoc $filename --output="$entry/converted.pdf"
    echo "Completed"
  done
done

echo "Done, all subfolders have had been purged of docx files"
