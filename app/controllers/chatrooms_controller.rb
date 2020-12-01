class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: :show


  def index
    @chatrooms = policy_scope(Chatroom).order(created_at: :desc)
  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end



private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
  end
end
