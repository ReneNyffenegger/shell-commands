print_random_name() {

  pattern=$1
  file_created=$(mktemp $pattern)

  printf "%-20s -> %s\n" $pattern $file_created

# Remove file that was created by mktemp
  rm $file_created
}

# Replace X's with random letters
print_random_name foo-XXXX-bar

# Only last group of X's are replaced
print_random_name abc-XXXX-def-XXXX
