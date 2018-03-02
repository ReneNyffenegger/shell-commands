rm -f *.tar

tar cf root.tar src-dir

echo "Content of root.tar"
tar tf root.tar src-dir | sed 's/^/  /'

echo -e "\n-------------------\n"

( cd src-dir; tar cf ../inside.tar * )
echo "Content of inside.tar"
tar tf inside.tar | sed 's/^/  /'

rm -rf extract-dir
mkdir extract-dir

#
#  The following creates extract/src-dir
#
tar xf root.tar -C extract-dir

#
#  
#
mkdir extract-dir/inside-dir
tar xf inside.tar -C extract-dir/inside-dir

#
# Both directories are the same.
#
echo -e "\nComparing extract-dir/src-dir and extract-dir/inside-dir\n"
diff -r extract-dir/src-dir extract-dir/inside-dir
