define [
	'helpers/autolayout'
], (AutoLayout)->

	class RegionManager extends AutoLayout
		regions:
			Header : '#app-header'
			Sidebar: '#app-sidebar'
			Content: '#app-content'
			Overlay: '#app-overlay'
			Background: '#app-background'

		load: (rMap)->
			@regionViews = _.extend {}, rMap
			do @fetchViews

	class AppController extends Marionette.Controller
		
		initialize: ->
			@RM = new RegionManager({el: 'body'})
			@RM.load Header: 'views/header'
			console.log 'AppController::OK'
		
		onBeforeDestroy: -> do @RM.destroy
		
		
		# Controllers
		
		login:  -> @RM.load Content: 'views/login'
		logout: -> @RM.load Content: 'views/logout' 

		home: ->   @RM.load Content: 'views/home'
		search: -> @RM.load Content: 'views/search'

	return AppController