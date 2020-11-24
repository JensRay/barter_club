class ItemsController < ApplicationController
<<<<<<< HEAD

  def show
    @tem = Item.find(params[:id])
  end

=======
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
>>>>>>> cd7cbf80ed17d4a73530702f73196d9f55b4bd04
end
