gulp  = require('gulp')
gutil = require('gulp-util')
replace = require('gulp-replace')


AssetPaths = require('cson').load "#{process.cwd()}/gulp/assets.cson"
console.log AssetPaths.stack if (AssetPaths instanceof Error)


gulp.task 'copy:vendor', ->
  # copy assets
  gulp
    .src  AssetPaths.js.deps
    .pipe gulp.dest(AssetPaths.js.path)
  gulp
    .src  AssetPaths.css.deps
    .pipe gulp.dest(AssetPaths.css.path)
  gulp
    .src  AssetPaths.font.deps
    .pipe gulp.dest(AssetPaths.font.path)

  # copy others
  for path, dest of AssetPaths.others
    gulp
      .src path
      .pipe gulp.dest(dest)
  
  # Fix font paths
  gulp
    .src './vendor/fontawesome/css/font-awesome.min.css'
    .pipe replace(/..\/fonts/g, '../../fonts')
    .pipe gulp.dest(AssetPaths.css.path)
  gulp
    .src './vendor/roboto-fontface/roboto-fontface.css'
    .pipe replace(/fonts\//g, '../../fonts/')
    .pipe gulp.dest(AssetPaths.css.path)


gulp.task 'copy:img', ->
  gulp
    .src './source/img/*'
    .pipe gulp.dest(AssetPaths.font.path)


gulp.task 'copy', ['copy:vendor', 'copy:img']