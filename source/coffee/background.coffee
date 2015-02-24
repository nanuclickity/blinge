
windowOptions =
	bounds:
		width : 875
		height: 1024
		left  : 0
		top   : 0
	frame: "chrome"


chrome.app.runtime.onLaunched.addListener (options)->
	chrome.app.window.create 'public/index.html', windowOptions, (win)->
		console.log 'ChromeApp Loaded'

		# After Initialization, maximize the window
		# return win.maximize()