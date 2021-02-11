class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :original_item, class_name: "Item"
  belongs_to :my_item, class_name: "Item"
  has_one :chatroom, dependent: :destroy
  has_many :reviews, dependent: :destroy
  enum status: [:pending, :decline, :accept ]

  validates :original_item, uniqueness: { scope: :my_item }

end
