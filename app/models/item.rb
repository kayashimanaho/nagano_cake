class Item < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy
  belongs_to :genre
  
   has_one_attached :image
   
   def add_tax_price
    (self.price * 1.10).round
   end
   
   def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/noimage.png')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
   end
    
  module Item
  def number_to_currency(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end
  end
  
    
end
