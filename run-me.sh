#!/bin/bash

rm -rf .git
git init
npm install
(cd src/sass;bower install)
(cd src/js;bower install)
subl .
gulp
