#!/bin/bash

#mark for exit status
  echo "Which file / directory do you want to check?"
  read -r obj && file "$obj"
  if test -d "$obj"; then
    exit 1
  else
    exit 2
  fi
