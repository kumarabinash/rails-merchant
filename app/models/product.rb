class Product < ActiveRecord::Base
	validates_numericality_of :price

	def price=(input)
		input.delete!("$") #Note the !
		super
	end
end
