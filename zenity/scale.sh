#/bin/bash

# Note --step does not seem to have any influence
value=$(zenity --scale --text "Choose value between 10 and 42" --min-value 10 --max-value 42 --value 20 --step 2)
echo value is $value
