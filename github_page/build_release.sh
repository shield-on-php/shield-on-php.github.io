#!/usr/bin/env bash

# Move files from git to svn repository.
gitbook build


cp -a ./_book/* ./github_page

cd github_page
git add .
git commit -m "update website"
cd ../
