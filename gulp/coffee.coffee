gulp   = require 'gulp'
gutil  = require 'gulp-util'
coffee = require 'gulp-coffee'
gulpif = require 'gulp-if'
uglify = require 'gulp-uglify'

sourcemaps = require 'gulp-sourcemaps'

is_production = process.env.NODE_ENV is 'production'


pipe_dev = (stream)->
	stream
		.pipe sourcemaps.init()
		.pipe coffee( bare: true )
		.on 'error', gutil.log
		.pipe sourcemaps.write()
	return stream

pipe_prod = (stream)->
	stream
		.pipe coffee(bare: true, compress: true)
			.on 'error', gutil.log
		.pipe uglify()
	return stream


gulp.task 'coffee', ->
	stream = gulp.src  './source/coffee/**/*.coffee'
	compiled = `is_production ? pipe_prod(stream) : pipe_dev(stream)`
	compiled.pipe gulp.dest('./public/js')