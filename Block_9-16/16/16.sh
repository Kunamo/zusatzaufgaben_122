#!/bin/bash
while true;do
    #Display available Applications
    #echo Application*.sh | tr -d ".sh" #Display all files beginning w/ "Application" + ending w/ ".sh" ... then cut of ".sh"

    listApplication=(Application*.sh)
    oneApplication=Application*.sh

    for oneApplication in "${listApplication[@]}"; do
      echo "$oneApplication"
    done

    allApps=(${listApplication[@]}) #This array indeed has all applications in it, checked with for loop echo

    read command
    cmdStr="$command"
    cmdArr=($cmdStr)


    for i in "${allApps[@]}"; do
      if [[ "${cmdArr[0]}" == "exec" ]] && [[ "${cmdArr[1]}" == $i  ]]; then
            echo "${cmdArr[@]}"
            echo "success"
      fi
    done
done
