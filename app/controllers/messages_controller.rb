class MessagesController < ApplicationController
  def create
   
    @chatroom = Chatroom.find(params[:chatroom_id])

    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
          render_to_string(partial: "messages/message", locals: { message: @message })
      )
      (@chatroom.users.uniq - [current_user]).each do |user|
        Notification.create!(recipient: user, actor:current_user, action: "sent", notifiable_id: @chatroom.id, notifiable_type: "message")
      end
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end

  end

  def message_params
    params.require(:message).permit(:content)
  end
end
