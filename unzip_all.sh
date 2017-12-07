#!/bin/bash
START_DIRECTORY=$1

echo "=========================="

echo "Using Directory $START_DIRECTORY"

echo "=========================="

for entry in $START_DIRECTORY*
do
  for filename in $entry/*.zip;
  do
    if [[ -f $filename ]]; then
      echo "Attempting unzip of $filename"
      unzip -o $filename -d "$entry/extracted"
    fi
  done
done

echo "I've unzipped everything "
