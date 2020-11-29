class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: :show

  def show
    @chatroom = Chatroom.find(params[:id])
  end



private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
  end
end
