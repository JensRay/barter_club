class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @offer = Offer.find(params[:offer_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @offer = Offer.find(params[:offer_id])
    @review.user_id = current_user.id
    @review.offer_id = @offer.id
    authorize @review
    if current_user == @offer.original_item.user
      @user = @offer.user
    else
      @user = @offer.original_item.user

    end
    if @review.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
