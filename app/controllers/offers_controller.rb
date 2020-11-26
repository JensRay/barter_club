class OffersController < ApplicationController


  def index
    @offers = policy_scope(Offer).order(created_at: :desc)


  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
    @original_item = Item.find(params[:item_id])
    @my_item = @offer.my_item


  end

  def new
    @my_items = current_user.items
    @original_item = Item.find(params[:item_id])
    @offer= Offer.new
    @items = Item.all
    authorize @offer
  end

  def create

    @offer = Offer.new(offer_params)
    authorize @offer
    @original_item = Item.find(params[:item_id])
    @offer.original_item = @original_item
    @offer.user = current_user

    if @offer.save

      redirect_to item_offer_path(item_id: @original_item, id: @offer)
    else
      render :new
    end
  end

  def edit
  end


  def update

    @offer = Offer.find(params[:id])
    authorize @offer
    if params[:status] == 'accept'
      @offer.accept!
    else
      @offer.decline!
    end
    @offer.save
    redirect_to offers_path

  end

  def destroy
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.destroy

    redirect_to items_path
  end



  private

  def offer_params
    params.require(:offer).permit(:my_item_id)
  end


end
