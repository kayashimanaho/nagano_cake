class Order < ApplicationRecord
  enum payment_method: { credit_card: 0, transfer: 1 }
  belongs_to :customer
  has_many :order_details, dependent: :destroy
  
   has_one_attached :image
   
  # enum order_status: {
    # waiting: 0,
    # paid_up: 1,
    # preparing: 2,
    # shipped: 3
# }

 def address_all
  '〒' + postal_code + ' ' + address + ' ' + name
 end
end
