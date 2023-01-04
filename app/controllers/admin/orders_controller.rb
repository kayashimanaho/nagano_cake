class Admin::OrdersController < ApplicationController

 
  def show
    @total = 0
    @shipping_cost = 800
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    
  end

  def update
    @order = Order.find(params[:id])
    @order_details = OrderDetail.where(order_id: params[:id])
    if @order.update(order_params)
      if @order.status = 1 
        @order_details.each do |order_detail|
          order_detail.making_status = 1
          order_detail.save
        end
      end
      #注文ステータスが「入金確認」とき、製作ステータスを全て「製作待ち」に更新する
    end
    redirect_to admin_order_path(@order)
  end
  
  private

  def order_params 
    params.require(:order).permit(:status)
  end
end
