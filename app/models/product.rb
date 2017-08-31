class Product < ApplicationRecord
  has_many :order_items

  enum status: [ :active, :full ]
end
