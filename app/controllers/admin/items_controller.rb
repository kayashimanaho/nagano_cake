class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
   
  end

  def create
     @item = Item.new(post_image_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to admin_item_path
  end
  
  def index
    @items =Item.all
  end

  def show
    @item = Item.find(params[:id])
    	
  end

  def edit
  end

  def update
  end
  
   private

  def item_params
    params.require(:item).permit(:name, :image, :genre, :introduction,:price, :is_active)
  end
end
