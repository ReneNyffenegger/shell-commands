gravity=0 # default

# start coordinates
x=20
y=600
width=600
height=200

for i in {1..100}; do

# Adjust coordinates:
  x=$((      $x      + 5 ))
  y=$((      $y      - 4 ))
  width=$((  $width  - 3 ))
  height=$(( $height + 3 ))

# resize and move current (that is: active) window:
  wmctrl -r :ACTIVE: -e "$gravity,$x,$y,$width,$height"

  clear
  echo x/y = $x/$y
  echo width/height = $width/$height

# Wait a bit
  sleep 0.1
done
