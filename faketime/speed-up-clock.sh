#
#  Speeding up the clock four times.
#
#  The sleep 1 takes only a fourth of a second in real time.
#
faketime -f   x4   /bin/bash -c 'while [ $SECONDS -lt 3 ]; do echo $SECONDS; sleep 1; done'

# Output:
#
# 0
# 0
# 0
# 1
# 1
# 1
# 1
# 2
# 2
# 2
# 2

