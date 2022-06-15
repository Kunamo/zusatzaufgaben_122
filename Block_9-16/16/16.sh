#!/bin/bash
while true; do
  for i in {1..1} ; do
    #Disply all shell scripts starting with "Application" and ending with ".sh"
    #echo Application*.sh | tr -d ".sh"
    var="$(echo Application*.sh | tr -d ".sh")"; echo "$var"
    echo "Use 'start' or 'exit' application"
    read -r command

    if [ "$command" == "start ${var}" ]; then
      echo "Success"
    elif [ "$command" == "exit" ]; then
      echo "Exiting application"
    else
      echo "Not an available command"
    fi

    #start ${application}.sh
    wait
  done
done

#Progess: I'm rn at -> Recognizing which application is meant. I'm thinking of using an array or an for *.sh function (like in 15.sh / 14.sh)
