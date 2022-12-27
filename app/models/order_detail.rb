class OrderDetail < ApplicationRecord
  enum status: {
     "製作不可":0, "製作待ち":1, "製作中":2, "製作完了":3,
  }
   belongs_to :order
   belongs_to :item
   
    has_one_attached :image
    
    def subtotal
      item.with_tax_price * amount
    end
end
