class Category < ApplicationRecord
	has_many :products, dependent: :destroy
	validate :discount_invalid 


	def discount_invalid
		if discount < 0 or discount >100
			errors.add(:discount, 'descuento debe ser entre 0 a 100')
		end

	end 
end

