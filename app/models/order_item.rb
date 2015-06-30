class OrderItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :order

	validates :product_id, :order_id, presence: true
end
