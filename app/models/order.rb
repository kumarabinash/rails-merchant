class Order < ActiveRecord::Base
	has_many :order_items

	def total
		val = 0
		self.order_items.each do |item|
			val = val + item.subtotal
		end
		val
	end
end
