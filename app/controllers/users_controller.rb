class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_user, only: [:show, :edit, :update]


def show
  @user = User.find(params[:id])
  authorize @user
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

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :bio, photos: [])
  end
end
