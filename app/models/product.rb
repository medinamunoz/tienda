class Product < ApplicationRecord
  belongs_to :category
  validates :cost, presence: true
  after_initialize :default_value 


def default_value
	self.premium =false

end

end
