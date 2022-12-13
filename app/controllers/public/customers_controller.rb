class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def unsubscribe
  end
  
  def withdraw
  end
  
  def my_page
  end
end
