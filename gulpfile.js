require('coffee-script/register')

var gulp = require('gulp')
	, cson = require('cson')
	, $ = require('gulp-load-plugins')
	, gutil = require('gulp-util');

var colors = require('colors/safe');

SourceDir = process.cwd() + '/source';
DestDir   = process.cwd() + '/public';

Assets = cson.load(process.cwd() + '/gulp/assets.cson')
if (Assets instanceof Error)
	console.log('ERRASSETS: ', Assets.stack)


require('./gulp/copy')
require('./gulp/coffee')
require('./gulp/stylus')
require('./gulp/jade')
require('./gulp/watch')


var spawn = require('child_process').spawn;
var toLog = function(data){ return gutil.log(data.toString()) };
var shellRun = function(cmd, args){
	var process = spawn(cmd, args);
	process.stdout.on("data", toLog);
	process.stderr.on("data", toLog);

	console.log(colors.green('Running: '), colors.dim(cmd + ' ' + args.join(' ')));
	return new Promise(function(resolve, reject){
		process.on('close', function(data){
			toLog(data)
			resolve(true);
		});
	});
};


gulp.task('build', ['copy', 'coffee', 'stylus', 'jade']);


gulp.task('default', ['build', 'watch']);