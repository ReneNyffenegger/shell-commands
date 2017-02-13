faketime -f '@2001-02-03 04:05:06' /bin/bash -c 'while [ $SECONDS -lt 6 ]; do date; sleep 1; done'

# Output
# 
# Sam Feb  3 04:05:06 CET 2001
# Sam Feb  3 04:05:07 CET 2001
# Sam Feb  3 04:05:08 CET 2001
# Sam Feb  3 04:05:09 CET 2001
# Sam Feb  3 04:05:10 CET 2001
# Sam Feb  3 04:05:11 CET 2001
