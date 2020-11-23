class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :original_item, class_name: "Item"
  belongs_to :my_item, class_name: "Item"
  has_many :reviews
  enum status: [:pending, :decline, :accept ]
end
