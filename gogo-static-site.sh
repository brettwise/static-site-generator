#!/bin/bash

echo "Type the name of your site without the .com This will rename the folder you're in and be used in the first git commit:"
read sitename
echo "Cool hang tight. This might take a few seconds."
(cd ..; mv jade-bower-h5bp-scss-linter-gulp-starter $sitename)
echo "Folder renamed."
echo '\n' 'build' '\n' 'y' '\n' '404.html' '\n' 'y' '\n' | divshot init
sleep 5
echo "divshot site initialized"
rm -rf .git
echo "Git repo removed."
git init
echo "New git repo initialized."
git add -A
git commit -m "Initial commit for $sitename"
npm install
echo "npm packages installed."
(cd src/sass;bower install)
echo "Sass related Bower packages installed."
(cd src/js;bower install)
echo "JS related Bower packages installed."
subl .
gulp
