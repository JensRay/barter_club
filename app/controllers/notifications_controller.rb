class NotificationsController < ApplicationController

def index
  @notifications = policy_scope(Notification).where(recipient_id: current_user).where(read_at: nil)
end

def update
  @notification = Notification.find(params[:id])
  authorize @notification
  @notification.update(read_at: Time.zone.now)
  redirect_to chatroom_path(@notification.notifiable_id)

end
end
