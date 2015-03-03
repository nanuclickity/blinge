define [
	'marionette'
	'radio'
	'templates/views/splash'
], (Marionette, Radio, tpl)->

	class SplashPage extends Marionette.ItemView
		template: tpl
		className: 'view-splashpage'

	return SplashPage
