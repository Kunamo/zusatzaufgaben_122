#!/bin/bash
cat *.txt | sort | uniq -d | nl
