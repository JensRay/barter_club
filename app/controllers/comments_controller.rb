class CommentsController < ApplicationController
  before_action :set_comment, only: :show


  # def show
  #   @comments = Comment.all
  # end


  def new
    @comment = Comment.new
    authorize @comment
  end

  def create

    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.item = Item.find(params[:item_id])
    authorize @comment

    if @comment.save
      redirect_to item_path(@comment.item)
    else
      render :new
    end
  end



  private

  # def set_comment
  #   @comment = Comment.find(params[:id])
  #   authorize @comment
  # end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
