#!/bin/bash
npm install gulp
echo -ne '\n' 'build' '\n' 'y' '\n' '404.html' '\n' 'y' '\n' | divshot init
echo "divshot site initialized"
(cd src/sass;bower install)
echo "Sass related Bower packages installed."
(cd src/js;bower install)
echo "JS related Bower packages installed."
rm -rf src/js/vendor/modernizr/feature-detects
rm -rf src/js/vendor/modernizr/media
rm -rf src/js/vendor/modernizr/test
rm -rf src/js/vendor/instantclick/tests
rm -rf .git
echo "Old git repo removed."
git init
echo "New git repo initialized."
git add -A
git commit -m "Initial commit for $sitename"
rm README.md
mv new-repo-readme.md README.md
git add -A
git commit -m "Replaced readme about the static-site-generator with new project readme."
hub create -d "Home of $sitename"
git push --set-upstream origin master
echo "Github repo created and pushed."
subl .
gulp
