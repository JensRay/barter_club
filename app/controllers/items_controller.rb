class ItemsController < ApplicationController
  
  def index
    @items = policy_scope(Item).order(created_at: :desc)
  end

  def show
    authorize @item
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

private

  def item_params
    params.require(:item).permit(:name, :description, :category, :photo)
  end
 end
