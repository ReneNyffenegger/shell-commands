if [ -f target.zip ]; then
    rm target.zip
fi

if [ -f dir.zip ]; then
    rm dir.zip
fi

if [ -d /tmp/dir ]; then
    rm -R /tmp/dir
fi

. add-files.sh
. add-directory.sh
. show-content.sh
. unzip-into-dir.sh
