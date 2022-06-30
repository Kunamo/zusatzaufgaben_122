#!/bin/bash
# Schreiben Sie ein Skript, das Dateien anhand der Dateierweiterung umbenennt.
# Als nächstes sollte es den Benutzer fragen, welches Präfix dem Dateinamen
# vorangestellt werden soll. Standardmäßig sollte das Präfix das aktuelle
# Datum im Format JJJJ-MM-TT sein. Wenn der Benutzer einfach die Eingabetaste drückt,
# wird das aktuelle Datum verwendet. Andernfalls wird das vom Benutzer
# eingegebene Datum als Präfix verwendet. Als nächstes sollten der
# ursprüngliche Dateiname und der neue Name der Datei angezeigt werden.
# Schließlich sollte die Datei umbenannt werden.


Myfunction () {
  #Enter prefix
  read -r prefix
  #If "enter" ("-z" -> checking if string empty) then use current date
  if [ -z "$prefix" ]; then
    prefix=$(date +%Y-%m-%d)
  fi
  for f in *.jpg; do
      echo "$f" "-->" "${prefix}-${f}"
  done
  for f in *.jpg; do
    mv -- "$f" "${prefix}-${f}"
  done
}
Myfunction
#echo $prefix

#marked for functions
# global variables (default, even if inside function) and local varibles (with "local")
# bash-functions do not return value, they return the exit-status of the last command
# to return a value use "return" (default $?)
