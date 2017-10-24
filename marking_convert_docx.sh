#!/bin/bash

start=$1

for student in $start*
do
  if [[ -d "$student"  ]]; then
    for file in $student/*.docx
    do
      if [[ -f $file ]]; then
        echo "Found offending file $file"
        echo "Converting…"
        pandoc $file --output=$student/converted.pdf
      fi
    done
  fi
done
