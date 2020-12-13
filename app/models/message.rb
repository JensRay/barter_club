class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  has_many :notifications, dependent: :destroy
end
