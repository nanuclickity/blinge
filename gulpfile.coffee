gulp = require 'gulp'

require './gulp/copy'
require './gulp/coffee'
require './gulp/stylus'
require './gulp/jade'
require './gulp/watch'

gulp.task 'build', ['copy', 'coffee', 'jade', 'stylus']
gulp.task 'default', ['build', 'watch']