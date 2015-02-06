var gulp = require('gulp');
var gulpJade = require('gulp-jade');
var markup = require('../config').markup;
var jade = require('../config').jade;
var browserSync  = require('browser-sync');

gulp.task('markup', function() {
  return gulp.src(markup.src)
    .pipe(gulp.dest(markup.dest))
    .pipe(browserSync.reload({stream:true}));
});

gulp.task('jade', function() {
  return gulp.src(jade.src)
  	.pipe(gulpJade({
  		pretty: true
  	}))   
    .pipe(gulp.dest(jade.dest))
    .pipe(browserSync.reload({stream:true}));
});
