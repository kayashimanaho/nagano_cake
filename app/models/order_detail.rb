class OrderDetail < ApplicationRecord
   belongs_to :oreder
   belongs_to :item
   
    has_one_attached :image
end
