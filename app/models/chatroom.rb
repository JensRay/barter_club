class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :offer
  has_many :users, through: :messages
  

end
