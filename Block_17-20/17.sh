#!/bin/bash

#generate random number
r=$RANDOM
echo $r

userscmd=$(users)
infocmd=$(info)

logger "$userscmd" + "$info" + "Random number is $r"
