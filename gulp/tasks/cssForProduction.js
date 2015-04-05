var gulp         = require('gulp');
var unCSS        = require('gulp-uncss');
var sass         = require('gulp-sass');
var handleErrors = require('../util/handleErrors');
var config       = require('../config').sass;
var autoprefixer = require('gulp-autoprefixer');
var minifyCSS    = require('gulp-minify-css');
var size         = require('gulp-filesize');
var production   = require('../config').production;

gulp.task('cssForProduction', function() {
  return gulp.src(config.src)
      .pipe(sass())
      .pipe(autoprefixer({ browsers: ['last 2 version'] }))
      .pipe(unCSS({
        html: [production.dest + '/*.html'],
        ignore: ['.overlay-hugeinc.open', '.overlay-hugeinc.close', '.overlay-hugeinc.open nav ul', '.overlay-hugeinc.close nav ul', '.overlay .overlay-close', '.overlay nav', '.overlay ul']
      }))
      .pipe(minifyCSS({keepSpecialComments: 0}))
      .pipe(gulp.dest(production.cssDest));
});