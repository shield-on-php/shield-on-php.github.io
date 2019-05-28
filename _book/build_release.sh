#!/usr/bin/env bash

SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
dir=$(dirname "$SCRIPT")

echo ${dir};

# Move files from git to svn repository.
gitbook build


cp -R ${dir}/_book ${dir}/github_page

cd github_page
git add .
git commit -m "update website"
git push origin master
cd ../
