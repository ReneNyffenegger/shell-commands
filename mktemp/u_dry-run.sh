FILENAME=$(mktemp  -u   )
DIRECTORY=$(mktemp -u -d)

if [ -e $FILENAME ]; then
  echo "$FILENAME does not exist"
else
  echo "$FILENAME exists"
fi

if [ -e $DIRECTORY ]; then
  echo "$DIRECTORY does not exist"
else
  echo "$DIRECTORY exists"
fi
