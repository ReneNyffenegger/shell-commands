#/bin/bash

file=$(zenity --file-selection --text "Choose your file")
echo "You have chosen $file"
