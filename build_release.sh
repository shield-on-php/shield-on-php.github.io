#!/usr/bin/env bash


gitbook build

path1="/data/gitbook/shieldon/_book/*"
path2="/data/gitbook/shieldon_github_page"
echo "${path1}"
echo "${path2}"
cp -R ${path1} ${path2}

cd ${path2}
git add .
git commit -m "update website"
git push origin master

