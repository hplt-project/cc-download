for x in `cat cc_paths_shuffled_first10.txt`; do zcat warcpaths/$x | sed -r 's!(.*)$!http://data.commoncrawl.org/\1\t  dir='$(basename $x .gz)'!'; done |shuf|tr '\t' '\n'> first10_warcs.lst
