#!/bin/bash

read option

if "$(option") == "1"
then
  echo "You selected option 1"
  ls -l
  exit 0
elif "$(option") == "2"
then
  echo "You selected option 2"
  exit 1
elif "$(option") == "3"
then
  echo "You selected option 3"
  exit 2
fi
