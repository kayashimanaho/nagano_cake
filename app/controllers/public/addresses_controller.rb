class Public::AddressesController < ApplicationController
   before_action :authenticate_customer!
  def index
    @address = Address.new
    @addresses = Address.all
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
