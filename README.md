# Helper scripts for downloading a list of Common Crawls

## Installation
Install [aria2c](https://github.com/aria2/aria2) and make sure ```aria2c``` is in your PATH.

## Usage
Download files containing lists of URLs for all crawls from [cc_list.txt](cc_list.txt):
```
./get_url_lists.sh
```

Select file lists you want to download files from. For instance, we sampled 10 random CC crawls to download:
```
ls warcpaths/|shuf -n 10 >cc_paths_shuffled_first10.txt
```

Generate download tasks for Aria2:
```
./generate_aria_input_first10crawls.sh
```

Run Aria2:
```
/run_aria.sh first10_warcs.lst
```

When finished or interrupted Aria2 will save unfinished downloads back to first10_warcs.lst. Rerun the last command to re-run downloading unfinished files.

## TODO
Update cc_list.txt: more crawls from 2023-2024 are now available!
