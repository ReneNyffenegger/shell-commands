for fg_color in {0..7}; do
for bg_color in {0..7}; do

  tput setaf $fg_color; # set foreground color
  tput setab $bg_color; # set background color
  printf "fg=$fg_color, bg=$bg_color"

  tput sgr0 # reset attributes
  printf "\n"

done;
done
