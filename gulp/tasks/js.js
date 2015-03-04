var gulp         = require('gulp');
var browserSync  = require('browser-sync');
var config       = require('../config').js;

gulp.task('js', function () {
  return gulp.src(config.src)
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream: true}));
});
