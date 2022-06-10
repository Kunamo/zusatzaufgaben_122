#!/bin/bash
file="anotherfile"
echo "this script is cheking file: $file"
test -e "$file" | file "$file" && ls -l "$file"
