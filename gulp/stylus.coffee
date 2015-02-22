gulp = require('gulp')
gutil = require('gulp-util')
stylus = require('gulp-stylus')
nib = require('nib')

stylus_compile = (source_path, withAssets) ->
  _imports = [
    'nib'
    process.cwd() + '/' + 'source/stylus/variables'
    process.cwd() + '/' + 'source/stylus/mixins/*'
  ]
  if !withAssets
    _imports = [ 'nib' ]
  
  config = 
    use: [ nib() ]
    import: _imports
    error: true
    compress: false
    sourcemap:
      inline: true
      comment: true
  
  stream = gulp.src(source_path).pipe(stylus(config)).on('error', gutil.log)
  stream


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