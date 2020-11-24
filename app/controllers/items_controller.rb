class ItemsController < ApplicationController
  
  def index
    @items = policy_scope(Item).order(created_at: :desc)
  end

  def show
    authorize @item
    @item = Item.find(params[:id])
  end

end
