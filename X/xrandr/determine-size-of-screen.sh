w=$(xrandr | grep current | awk '{tmp=($8 *1); print tmp}')
h=$(xrandr | grep current | awk '{tmp=($10*1); print tmp}')

echo Screen is $w pixels wide and $h pixels high
