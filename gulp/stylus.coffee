gulp   = require 'gulp'
gutil  = require 'gulp-util'
stylus = require 'gulp-stylus'
nib = require 'nib'

stylus_compile = (source_path, withAssets) ->
	required =
		modules: [ 'nib' ]
		exports: [ nib() ]
		files: [
			'variables'
			'mixins/*'
		].map (k)-> "#{process.cwd()}/source/stylus/#{k}"
	
	config =
		use: required.exports
		import: `withAssets ? required.modules.concat(required.files) : required.modules`
		error: true
		compress: false
		sourcemap:
			inline: true, comment: true
	
	stream = gulp
		.src source_path
		.pipe stylus(config)
		.on 'error', gutil.log
	return stream


gulp.task 'stylus:main', ->
	stylus_compile './source/stylus/style.styl'
		.pipe gulp.dest('./public/css')
	return


gulp.task 'stylus:components', ->
	stylus_compile './source/coffee/components/**/*.styl', true
		.pipe gulp.dest('./public/js/components')
	return

# Compile Stylus
gulp.task 'stylus', ['stylus:components', 'stylus:main']