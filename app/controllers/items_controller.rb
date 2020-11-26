class ItemsController < ApplicationController

before_action :set_item, only: :show

  def index

    if params[:query].present?
      @items = policy_scope(Item.search_by_name_description_and_category(params[:query]))

    else
      @items = policy_scope(Item).order(created_at: :desc)
    end

  end

  def show
    @items = Item.all
  end


  def new
    @item = Item.new
    authorize @item
  end

  def create

    @item = Item.new(item_params)
    @item.user = current_user
    authorize @item

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

private

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :category, photos: [])
  end
 end
