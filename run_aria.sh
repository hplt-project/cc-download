FILELIST=$1
aria2c -i $FILELIST  --max-tries=150 -l ${FILELIST}_log --max-file-not-found=150 -V --save-session=$FILELIST -j 100 --retry-wait=3
