#!/bin/bash

#marked for functions
# global variables (default, eben if inside function) and local varibles (with "local")
# bash-functions do not return value, they return the exit-status of the last command
# to return a valie use "return" (default $?)

file_count () {
  filecount=$(ls | wc -l)
  echo "There are $filecount files in this directory"
}
file_count
