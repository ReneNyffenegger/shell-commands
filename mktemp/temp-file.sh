FILENAME=$(mktemp)

if [ -a $FILENAME ]; then
  echo "Temporary file $FILENAME exists"
else
  echo "Temporary file $FILENAME does not exist"
fi
