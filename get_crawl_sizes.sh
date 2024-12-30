crawl=CC-MAIN-2024-51
(echo $crawl; curl -s https://data.commoncrawl.org/crawl-data/${crawl}/index.html|grep -A 2 warc.paths.gz|tail -2|sed -r 's!.*>([0-9\.]+)<.*!\1!')|tr '\n' '\t'; echo ''
