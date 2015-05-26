define ['backbone'], (Backbone)->
	
	# Example Data
	# "id": 0,
	# "name": "Terri Sullivan",
	# "designer": "Leon Owen",
	# "picture": "http://placehold.it/32x32",
	# "age": 48,
	# "email": "leonowen@mediot.com",
	# "stylist_notes": "Culpa excepteur sunt sunt fugiat irure qui. Et id sunt dolore occaecat ea elit culpa eu aliqua adipisicing dolore mollit. Aliquip ipsum proident non officia ullamco enim. Veniam nisi in non sit dolor commodo commodo quis et. Qui quis ad consequat commodo proident quis eu proident nisi deserunt culpa.",
	# "product_details": "Ea minim sint ut officia in irure. Ullamco do id magna minim cillum dolore minim tempor do magna eu. Fugiat dolor aute exercitation aliqua est est excepteur quis mollit nostrud aute ea ut velit. Velit veniam ea voluptate ad est ullamco proident voluptate veniam proident consequat aliquip commodo aliquip. Esse minim duis eu fugiat officia reprehenderit fugiat laboris excepteur non. Labore Lorem aliqua ea sit elit. Elit laborum labore ullamco eu eiusmod est. Sint irure irure sit esse fugiat irure. Lorem pariatur cillum sunt veniam voluptate enim sunt ullamco ad incididunt duis veniam non ex. Non magna voluptate laboris commodo officia enim et eiusmod id nostrud esse ad.",
	# "price_units": "INR",
	# "price_rental": "2,458.90",
	# "price_retail": "32,118.46"


	class Product extends Backbone.Model
		idAttribute: 'id'

	return Product