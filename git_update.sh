#!/bin/bash

git checkout gh-pages
git add .
git commit -m 'update website'
git push origin gh-pages

git checkout master
git merge gh-pages -m 'update from gh-pages'
git push origin master

git checkout gh-pages

echo 'FINISHED'
read
