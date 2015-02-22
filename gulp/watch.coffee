gulp  = require 'gulp'
gutil = require 'gulp-util'
livereload = require 'gulp-livereload'

taskMap = 
	'coffee': 'source/coffee/**/*.coffee'
	'stylus:main': 'source/stylus/**/*.styl'
	'jade:main'  : 'source/jade/**/*.jade'
	'stylus:components': 'source/coffee/components/**/*.styl'
	'jade:components'  : 'source/coffee/components/**/*.jade'

reloadGlobs = [
	'public/js/**/*.js'
	'public/css/**/*.css'
	'public/js/components/**/*.css'
].map (p)-> 
	return "#{process.cwd()}/#{p}"



gulp.task 'watch', ->
	# Start LR Server
	do livereload.listen
 
 	# Setup Watch
	gulp.watch(glob, [task]) for task, glob of taskMap

	# Notify changes to LR Server
	gulp
		.watch reloadGlobs
		.on 'change', livereload.changed

	return
