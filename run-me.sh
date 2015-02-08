#!/bin/bash

echo "Type what you want to rename the project folder you're inside right now:"
read foldername
echo "Cool hang tight. This might take a few seconds."
(cd ..; mv jade-bower-h5bp-scss-linter-gulp-starter $foldername)
echo "Folder renamed."
rm -rf .git
echo "Git repo removed."
git init
echo "New git repo initialized."
npm install
echo "npm packages installed."
(cd src/sass;bower install)
echo "Sass related Bower packages installed."
(cd src/js;bower install)
echo "JS related Bower packages installed."
subl .
gulp
