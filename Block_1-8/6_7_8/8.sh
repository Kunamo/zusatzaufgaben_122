#!/bin/bash
#marked for "using an array and looping trough it"

files=("anotherfile" "somefile" "somedir")
for file in "${files[@]}"; do #@ -> is for looping trough ALL of the array
  echo "result of $file: "
  test -e "$file" | file "$file" && ls -l "$file"
done
