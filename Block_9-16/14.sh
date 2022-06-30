#!/bin/bash
date=$(date +%Y-%m-%d)

for f in *.jpg; do
    mv -- "$f" "${date}-${f}"
done
