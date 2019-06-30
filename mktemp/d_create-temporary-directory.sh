DIRECTORY=$(mktemp -d)

if [ -d $DIRECTORY ]; then
  echo "Temporary directory $DIRECTORY exists"
else
  echo "Temporary directory $DIRECTORY does not exist"
fi
