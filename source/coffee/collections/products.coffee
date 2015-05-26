define [
	'backbone'
	'model/product'
	'product-data'
], (Backbone, Product, data)->
	
	class Products extends Backbone.Collection
		model: Product	



	C = new Products(data.splice(0, 25))
	return C