#/bin/bash

percent=0;
for num in zero one two three four five six seven eight nine ten; do
  echo $percent
  echo "# $num"
  percent=$(($percent + 10));
  sleep 1
done | zenity --progress --text "Counting..." --percentage=0
