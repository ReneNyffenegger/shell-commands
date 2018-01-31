#/bin/bash

date=$(zenity --calendar --text "Choose your date")
echo "You have chosen $date" # Format is dd.mm.yyyy
