#!/bin/bash

npm install
(cd src/sass;bower install)
(cd src/js;bower install)
gulp
