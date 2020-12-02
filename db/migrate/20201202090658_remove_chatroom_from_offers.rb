class RemoveChatroomFromOffers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :offers, :chatroom, foreign_key: true
  end
end
