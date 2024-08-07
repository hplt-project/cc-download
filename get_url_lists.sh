sed -r 's!^(.*)$!http://data.commoncrawl.org/crawl-data/\1/warc.paths.gz\n  out=\1.gz!' < cc_list.txt >aria_input_warcpaths
aria2c -i aria_input_warcpaths  --max-tries=150 -d warcpaths -l log_warcpaths --max-file-not-found=150 -V --save-session=failed_warcpaths -j 10 --retry-wait=1
sed -r 's!^(.*)$!http://data.commoncrawl.org/crawl-data/\1/cc-index-table.paths.gz\n  out=\1.gz!' < cc_list.txt >aria_input_parquetpaths
aria2c -i aria_input_parquetpaths  --max-tries=150 -d parquetpaths -l log_parquetpaths --max-file-not-found=150 -V --save-session=failed_parquetpaths -j 10 --retry-wait=1

