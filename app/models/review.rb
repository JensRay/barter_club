class Review < ApplicationRecord
  belongs_to :user
  validates :content, :rating, presence: true
  belongs_to :offer

  RATING = [1, 2, 3, 4, 5]
end
