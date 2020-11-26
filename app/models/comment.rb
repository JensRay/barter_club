class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :content, presence: true, length: { minimum: 5, maximum: 160 }
end
