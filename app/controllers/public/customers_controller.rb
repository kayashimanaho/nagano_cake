class Public::CustomersController < ApplicationController
  def my_page
    # @customer = Customer.find(params[:id])
    @customers = current_customer
  end
  
  def edit
     @customers = current_customer
  end
  
  def update
  end
  
  def unsubscribe
  end
  
  def withdraw
  end
  
end
