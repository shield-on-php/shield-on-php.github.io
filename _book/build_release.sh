#!/usr/bin/env bash

dir=$(pwd)

# Move files from git to svn repository.
gitbook build


cp -a ${dir}/_book ${dir}/github_page

cd github_page
git add .
git commit -m "update website"
git push origin master
cd ../
