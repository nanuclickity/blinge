define [
	'marionette'
	'templates/views/home'
	'collections/most_popular'
], (Marionette, tpl, MostPopular)->

	class HomeView extends Marionette.ItemView
		className: 'view-home'
		template: tpl
		templateHelpers: ->
			return {
				showcaseImages: [
					'http://placehold.it/1080x450&text=First',
					'http://placehold.it/1080x450&text=Second',
					'http://placehold.it/1080x450&text=Third'
				],
				twoImages:
					left:
						title: 'Awesome Image 1'
						url: 'http://placehold.it/450x450'
					right:
						title: 'Awesome Image 2'
						url: 'http://placehold.it/450x450'
				mostPopular: -> _.map(MostPopular.take(10), (m)-> do m.toJSON )
			}

		initialize: ->
			console.log 'Home Loaded'

	return HomeView