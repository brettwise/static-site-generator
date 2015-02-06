var gulp = require('gulp');

// Run this to compress all the things!
gulp.task('production', ['jade', 'markup', 'images', 'iconFont', 'minifyCss', 'uglifyJs']);
