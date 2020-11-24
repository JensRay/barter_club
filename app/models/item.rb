class Item < ApplicationRecord
  belongs_to :user
  has_many :offers_as_my_item, source: :offer, foreign_key: :my_item_id
  has_many :offers_as_original_item, source: :offer, foreign_key: :original_item_id
  has_many :comments

  has_one_attached :photo

end
