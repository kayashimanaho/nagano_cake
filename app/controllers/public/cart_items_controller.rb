class Public::CartItemsController < ApplicationController
  def index
   
    # @cart_items = current_customer.items
  end
  
  def update
  end
  
  def destroy
  end
  
  def destroy_all
  end
  
  def create 
  end

  
private

def cart_item_params
     params.require(:cart_item).permit(:item_id,:customer_id,:amount)
end
end
   