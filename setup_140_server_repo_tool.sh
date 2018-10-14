#!/bin/bash

# Take the timestamp.
ts=`date +"%Y-%m-%d_%H:%M:%S"`

tmp_file=/tmp/repo_tmp_$ts
curl https://storage.googleapis.com/git-repo-downloads/repo > $tmp_file

sudo cp $tmp_file /bin/repo
sudo chmod a+x /bin/repo
