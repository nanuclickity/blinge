define [
	'marionette'
	'radio'
	'templates/views/header'
], (Marionette, Radio, tpl)->
	
	class AppHeader extends Marionette.LayoutView
		template : tpl
		templateHelpers: ->
			return {
				navcats: ["Unlimited", "What's New", "Dresses", "Accessories", "Occasions", "Designers", "Stores"]
				to_url: (str)-> str.toLowerCase().replace(/ /g, '').replace('\'', '')
			}
		className: 'header-inner'

		


	return AppHeader