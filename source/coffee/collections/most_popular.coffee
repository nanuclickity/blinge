define [
	'backbone'
	'product-data'
], (Backbone, Data)->

	
	class MostPopular extends Backbone.Collection
		parse: (data)->
			_.map data, (d,i)-> 
				d['picture'] = 'http://placehold.it/120x220&text=' + i
				return d

	return MostPopular
