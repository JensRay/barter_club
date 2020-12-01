class AddReferenceToOffers < ActiveRecord::Migration[6.0]
  def change
    add_reference :offers, :chatroom, foreign_key: true
  end
end
