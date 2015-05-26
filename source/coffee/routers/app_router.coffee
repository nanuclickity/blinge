define [
	'marionette'
	'radio'
], (Marionette, Radio)->

	class AppRouter extends Marionette.AppRouter
		
		appRoutes:
			'(/)' : 'home'
			
			'login(/)' : 'login'
			'logout(/)': 'logout'

			'search(/)': 'search'
			'search/:q': 'search'
			
		initialize: (options)->
			console.log 'AppRouter::OK'

	return AppRouter