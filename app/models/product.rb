class Product < ApplicationRecord

	scope :premium_search, -> {where(premium: true)}

	scope :last_n, -> (n){order('id DESC').limit(n)}

	after_destroy :category_delete

	  belongs_to :category
	  validates :cost, presence: true
	  before_save :default_value
	  before_create :default_value 


	def default_value
		unless self.premium.present? or self.premium==true
		self.premium =false
		end

	end

	def category_delete
		var = Category.all
		var.each do |x|
			if x.products.empty?
				x.destroy
			end
		end
	end


	def precio_final
		@aplica_descuento = self.cost - ((self.cost * self.category.discount).to_f / 100.0 )
	end



end
