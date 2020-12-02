class ItemsController < ApplicationController

before_action :set_item, only: :show

  def index
    @items = policy_scope(Item).order(created_at: :desc)
    if params[:query].present?
      @items = policy_scope(Item.search_by_name_description_and_category(params[:query]))
    elsif params[:category].present? && params[:category] != "All categories"
      @items = policy_scope(@items.where(category: params[:category]))
    # elsif
      # Item.where(user: User.near([current_user.latitude, current_user.longitude], 20))
    end
  end

  def show
    @items = Item.all
    @comment = Comment.new
    @offers = Offer.all

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
