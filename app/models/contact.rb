class Contact < ApplicationRecord
  validates :name, :address, :phone, :email, :content, presence: true 
end