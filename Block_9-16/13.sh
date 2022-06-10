#!/bin/bash

file_count () {
  count=$(ls "$1"| wc -l)
  echo "$1": "$count"
}

file_count etc
file_count var
file_count usr/bin
