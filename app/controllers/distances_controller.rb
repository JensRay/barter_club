class DistancesController < ApplicationController
  def index

  end

  def create

    @from = current_user.address
    @to = Item.find_by(id: params[user: :address])
    if @from && @to
      flash[:success] =
        " #{@from.distance_from(@to.to_coordinates)} km"
  end
  end



end
