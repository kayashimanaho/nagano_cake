class Item < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy
  belongs_to :genre
  
   has_one_attached :image
   
   def add_taxprice
    (self.price * 1.10).round
   end
end
