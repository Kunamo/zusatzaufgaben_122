#!/bin/bash
#marked for documentation: uses an array and loops trough it
files=("anotherfile" "somefile")
for file in "${files[@]}"; do #@ -> loop trough all the elements in the array
  echo "result of $file: "
  ls -l "$file"
done
