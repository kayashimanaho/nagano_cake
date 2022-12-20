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
     @customer = Customer.find_by(email: params[:name])
  end
  
  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: false)
    sign_out current_customer
    redirect_to root_path
  end
  
end
