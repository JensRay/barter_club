class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_user, only: [:show, :edit, :update]


def show
  @user = User.find(params[:id])
  authorize @user
  @reviews = @user.reviews_as_bidder.select do |review|
    review.user != @user
  end
  @reviews += @user.reviews_as_owner.select do |review|
    review.user != @user
  end
  @average_rating = average_rating
end


  def edit
    set_user
  end


  def update
    @user = @user.update(user_params)
    authorize @user

    if @user.save
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def average_rating
    sum = 0
    @reviews.each do |review|
      sum += review.rating
    end
    (sum / @reviews.count.to_f).round

  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :bio, photos: [])
  end
end
