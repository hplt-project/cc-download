FILELIST=$1
NTHREADS=$2
aria2c -i $FILELIST  --max-tries=150 -l ${FILELIST}_log --log-level=notice --max-file-not-found=150 -V --save-session=$FILELIST -j $NTHREADS --retry-wait=1
