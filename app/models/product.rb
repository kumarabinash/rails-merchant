class Product < ActiveRecord::Base
	validates_numericality_of :price
	validates_numericality_of :stock, :greater_than_or_equal_to => 0
	validates :stock, presence: true

	def price=(input)
		input.delete!("$") #Note the !
		super
	end
end
