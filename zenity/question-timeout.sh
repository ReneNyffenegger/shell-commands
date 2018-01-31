#/bin/bash

zenity --question  --text "This is a question!\nYou have five seconds to answer." --timeout 5
case $? in
  0) echo "You answered yes";;
  1) echo "You answered no" ;;
  5) echo "Time out"        ;;
  *) echo "Unexpected!"     ;;
esac
