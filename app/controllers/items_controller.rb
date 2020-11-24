class ItemsController < ApplicationController
before_action :set_item, only: :show
  def index
    @items = policy_scope(Item).order(created_at: :desc)
  end

  def show
  end

  private

  def set_item
    @item = Item.find(params[:id])
    @items = Item.all
    authorize @item

  end

end
