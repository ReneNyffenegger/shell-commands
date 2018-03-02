rm -f my.tar *.txt

printf "one\ntwo\nthree\n" > numbers.txt
printf "foo\nbar\nbaz\n"   > fooBarBaz.txt

# c: Create tar file
tar cf my.tar *.txt

# Sleep a second for tar to recognize the updated file by timestamp
sleep 1
echo four >> numbers.txt

# u: Update newer files
tar uf my.tar *.txt

# t: list contents of tar
#    Note how update has appended numbers.txt to the
#    end (so, in fact, it's contained twice)
tar tvf my.tar


rm *.txt

# x: Extract a file
tar xf my.tar numbers.txt
cat numbers.txt

# u: update (add) another file
echo abc > letters.txt
tar uf my.tar letters.txt

# delete a file
tar --delete -f my.tar numbers.txt
echo ''
tar tvf my.tar

# -C to extract to different directory
rm *.txt
tar xf my.tar -C /tmp letters.txt
cat /tmp/letters.txt
