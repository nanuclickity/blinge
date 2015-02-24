define [
	'marionette'
	'radio'
], (Marionette, Radio)->

	class AppRouter extends Marionette.AppRouter
		
		appRoutes:
			'(/)' : 'login'
			
			'login(/)' : 'login'
			'logout(/)': 'logout'

			
		initialize: (options)->
			console.log 'AppRouter::OK'

	return AppRouter