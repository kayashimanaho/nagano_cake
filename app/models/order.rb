class Order < ApplicationRecord
  enum payment_method: { credit_card: 0, transfer: 1 }
  belongs_to :customer
  has_many :order_details, dependent: :destroy
  
   has_one_attached :image
   
   
end
