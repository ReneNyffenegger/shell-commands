#/bin/bash

password=$(zenity --entry --hide-text --title "Entry of a password" --text "Enter your secret")
echo The secret password is $password
