function print_at {
  x=$1
  y=$2
  text=$3

# Note: first the row, then the column:
  tput cup $y $x; printf "$text (x=$x, y=$y)"

}

clear
print_at  5 10 "hello world"
print_at  8  3 "twenty-four"
print_at 30  8 "bit to the left"
print_at 50  6 "more to the left"
print_at  0 20 "finish"
