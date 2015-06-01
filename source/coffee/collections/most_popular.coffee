define [
	'backbone'
	'product-data'
], (Backbone, Data)->

	res = Data.map (d, i)->
		d['picture'] = 'http://placehold.it/200x280&text=' + i
		return d
	
	class MostPopular extends Backbone.Collection
		initialize: ->
			console.log "Most popular products loaded. count: #{@length}"


	return new MostPopular(res)
