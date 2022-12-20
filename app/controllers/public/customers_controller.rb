class Public::CustomersController < ApplicationController
  def my_page
    # @customer = Customer.find(params[:id])
    @customers = current_customer
  end
  
  def edit
    # @customer = Customer.find(params[:id])
     @customers = current_customer
  end
  
  def update
      @customer = Customer.find(params[:id])
    @customer.update(customer_params)
     redirect_to my_page_customers_path(@customer.id)
  end
  
  def unsubscribe
     @customer = Customer.find_by(email: params[:name])
  end
  
  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    sign_out current_customer
    redirect_to root_path
  end
  
end
