#!/bin/bash
cat /etc/shadow

if [ $? -eq 0 ]; then
  echo "command succeeded"
else
  echo "command failed"
fi
