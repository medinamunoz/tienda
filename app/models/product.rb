class Product < ApplicationRecord
  belongs_to :category
  validates :cost, presence: true
  before_save :default_value
  before_create :default_value 


def default_value
	unless self.premium.present? or self.premium==true
	self.premium =false
	end

end

end
