class Product < ApplicationRecord
  validates :name,     presence: true,
                       length: { minimum: 4 },
					   uniqueness: true
					   
  validates :price,    presence: true,
                       numericality: { greater_than_or_equal_to: 0 }
					   
  validates :quantity, presence: true,
                       numericality: { only_integer: true,
                                       greater_than_or_equal_to: 0}
				   
end
