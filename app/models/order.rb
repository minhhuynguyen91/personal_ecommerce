class Order < ApplicationRecord
  has_many :order_items

  enum status: [ :in_progress, :placed, :shipped, :cancelled ]
end
