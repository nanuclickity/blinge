define [
	'backbone'
	'model/product'
	'product-data'
], (Backbone, Product, data)->
	
	class Products extends Backbone.Collection
		model: Product	



	C = new Products(_.take(data, 25))
	return C