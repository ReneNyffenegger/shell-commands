

gravity=0 # default

x=20
y=600
width=600
height=200

for i in {1..100}; do
  x=$((      $x      + 5 ))
  y=$((      $y      - 4 ))
  width=$((  $width  - 3 ))
  height=$(( $height + 3 ))
  wmctrl -r :ACTIVE: -e "$gravity,$x,$y,$width,$height"
  clear
  echo x/y = $x/$y
  echo width/height = $width/$height
  sleep 0.1
done
