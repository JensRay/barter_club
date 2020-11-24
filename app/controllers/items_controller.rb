class ItemsController < ApplicationController

  def show
    @tem = Item.find(params[:id])
  end

end
