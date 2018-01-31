y=2

function display_text {
  capname=$1

  tput sgr0  # Turn off all attributes

  tput cup $y 3; printf "This is ";
  tput $capname; printf $capname;

  y=$((y+2)) # move y coordinate downj

}

clear

display_text bold
display_text smul  # underlined text. Can be ended with rmul.
display_text blink # should blink. Does not always work.
display_text invis # invisible text
