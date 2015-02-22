gulp = require('gulp')
gutil = require('gulp-util')
coffee = require('gulp-coffee')
sourcemaps = require('gulp-sourcemaps')

gulp.task 'coffee', ->
  gulp
  	.src  './source/coffee/**/*.coffee'
  	.pipe sourcemaps.init()
  	.pipe coffee(bare: true)
  	.on   'error', gutil.log
  	.pipe sourcemaps.write()
  	.pipe gulp.dest('./public/js')
  return