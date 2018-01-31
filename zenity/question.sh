#/bin/bash

zenity --question  --text "This is a question!"
if [[ $? = 0 ]]; then
  echo "You answered yes";
else
  echo "You answered no";
fi

