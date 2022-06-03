#!/bin/bash
echo "Which file / directory do you want to check?"
read -r file && test -e "$file" | ls -l "$file"
