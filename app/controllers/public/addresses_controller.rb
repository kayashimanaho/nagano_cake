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
  
  private

def address_params
     params.require(:address).permit(:cusramer_id,:name,:postal_code,:address)
end
end
