class Public::HomesController < ApplicationController
  def top
    @item = Item.all
    @item = Item.all.order(created_at: :asc)
  end

  def about
  end
end
