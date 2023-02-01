#!/bin/sh

# +----------------------------------+
# how to use it (Mac and Linux only) +
# open a terminal and run the script +
#> bash create_project_naname.sh     +
# +----------------------------------+

# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
# Directory tree
TREE="
project_name
├── data_processed
├── data_raw
├── docs
├── figures
└── scripts
    ├── python
    └── r
"

mkdir -p $DIR/project_name/{scripts/{r,python},data_raw,data_processed,
figures,docs}

printf "\nProject directory created at %s,\n With structure:\n\n %s.\n\nDon't forget to change the name of the parent directoy." "$DIR" "$TREE"