define [
	'marionette'
	'radio'
	'collections/products'
	'templates/views/search'
	'templates/views/search-item'
], (Marionette, Radio, Products, tpl, itemTpl)->

	class SearchItem extends Marionette.ItemView
		template: itemTpl
		tagName: 'li'
		className: 'item-result'


	class SearchView extends Marionette.CompositeView
		template: tpl
		className: 'view-search'
		
		collection: Products

		childView: SearchItem
		childViewContainer: '.results-box .list-results'

	return SearchView