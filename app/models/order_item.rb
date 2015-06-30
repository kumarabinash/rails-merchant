class OrderItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :order

	validates :product_id, :order_id, presence: true

	def subtotal
		product.price*quantity
	end
end
