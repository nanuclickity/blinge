
js_root = `!!chrome.app.runtime ? '/public/js' : '/js'`

requirejs.config
	waitSeconds: 24
	baseUrl: js_root
	paths:
		jquery: 'vendor/jquery'
		underscore: 'vendor/underscore'
		backbone:   'vendor/backbone'
		marionette: 'vendor/backbone.marionette'

		radio:  'vendor/backbone.radio'
		moment: 'vendor/moment'

		bootstrap: 'vendor/bootstrap'
		
		jade: 'vendor/runtime'
		typeahead: 'vendor/typeahead.bundle'
		moment: 'vendor/moment'

		richmarker: 'vendor/richmarker'

	shim:
		bootstrap:
			deps: 'jquery'
		backbone:
			deps: ['jquery', 'underscore']
			exports: 'Backbone'
		marionette:
			deps: ['backbone']
			exports: 'Marionette'
		typeahead:
			deps: ['jquery']


requirejs ['jquery', 'app'], ($, App)->

	do App.start