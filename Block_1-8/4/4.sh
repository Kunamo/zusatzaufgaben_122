#!/bin/bash
FILE=file_path

echo "Checking if file $FILE exists..."

if test -f "$FILE"; then
  echo "$FILE exists"
  echo "$FILE passwords are enabled"
else
  echo "$FILE does not exist"
fi

if test -f "$FILE" && test -w "$FILE"; then
  echo "Checking if file $FILE is writable..."
  echo "Sie haben die Berechtigung, "$FILE" zu bearbeiten"
elif test -f "$FILE" && ! test -w "$FILE"; then
    echo "Checking if file $FILE is writable..."
  echo "Sie haben NICHT die Berechtigung, "$FILE" zu bearbeiten."
fi
