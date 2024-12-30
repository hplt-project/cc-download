LIST=$1
(for crawl in `sed 's!\.gz!!' $LIST`; do
  (echo $crawl; curl -s https://data.commoncrawl.org/crawl-data/${crawl}/index.html|grep -A 2 warc.paths.gz|tail -2|sed -r 's!.*>([0-9\.]+)<.*!\1!')|tr '\n' '\t'; echo ''
done) |tee ${LIST}.sizes
cut -f 3 ${LIST}.sizes | python -c 'import sys; print(sum(float(l) for l in sys.stdin))'
