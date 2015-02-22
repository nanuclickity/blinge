gulp = require 'gulp'

jade = require 'gulp-jade'
wrap = require 'gulp-wrap-amd'
gutil= require 'gulp-util'

jade_compile = (source_path) ->
  stream = gulp.src(source_path)
    .pipe jade(client: true)
    .pipe(wrap(
      deps:   ['jade', 'underscore']
      params: ['jade', '_']
    ))
    .on('error', gutil.log)
  stream

gulp.task 'jade:main', ->
  jade_compile('./source/jade/**/*.jade').pipe gulp.dest('./public/js/templates')
  return
gulp.task 'jade:components', ->
  jade_compile('./source/coffee/components/**/*.jade').pipe gulp.dest('./public/js/components')
  return

# Compile Jade
gulp.task 'jade', ['jade:components', 'jade:main']
