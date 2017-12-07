#!/bin/bash
START_DIRECTORY=$1

echo "=========================="

echo "Using Directory $START_DIRECTORY"

echo "=========================="

for entry in $START_DIRECTORY*
do
  for filename in $entry/*.docx;
  do
    echo "Converting $filename"

    echo "Doing a pass using LibreOffice Headless"
    libreoffice --headless --convert-to pdf $filename --outdir $entry

    echo "Doing a pass using Pandoc LaTeX"
    # Do a second pass using Pandoc just in case.
    pandoc $filename --output="$entry/converted.pdf"
    echo "Completed"
  done
done

echo "Done, all subfolders have had been purged of docx files"
