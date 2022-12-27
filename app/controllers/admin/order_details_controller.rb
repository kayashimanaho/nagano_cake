class Admin::OrderDetailsController < ApplicationController
  def update
    @order_details = Order_Detail.find(params[:id])
    @order_detail.update(order_detail_params)
    redirect_to admin_order_path(@order.id)
  end
  
  private
   
   def order_detail_params 
     params.require(:order).permit(:making_status)
   end
end
