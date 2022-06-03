#!/bin/bash
while true; do #while loop for more convenience for the user
  echo "Which file / directory do you want to check?"
  read -r file && test -e "$file" | ls -l "$file"
done
