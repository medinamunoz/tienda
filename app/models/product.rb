class Product < ApplicationRecord
  belongs_to :category
  validates :cost, presence: true
end
