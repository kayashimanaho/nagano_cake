class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @address = current_customer
    
  end

  def comfirm
    @order = Order.new(order_params)
    @cart_items = current_customer.cart_items
    @order.payment_method = params[:order][:payment_method]
    @address = current_customer
    render 'comfirm'
  end

  def complete
  end

  def create
    @order = Order.new(order_params)
    
    @order.save
    redirect_to comfirm_orders_path
  end

  def index
  end

  def show
  end
  
   private

def order_params
     params.require(:order).permit(:customer_id,:postal_code,:address,:name,:shipping_cost,:total_payment,:payment_method,:status)
end
end
