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
  @average_blank_stars = average_blank_stars
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
    if @reviews.size > 0
      @reviews.each do |review|
        sum += review.rating
      end
      sum / @reviews.count
    end
  end

  def average_blank_stars
    5 - average_rating.to_i
  end


  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :bio, photos: [])
  end
end
