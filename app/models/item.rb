class Item < ApplicationRecord
  belongs_to :user
  has_many :offers, source: :offers, foreign_key: :my_item_id, dependent: :destroy
  has_many :offers, source: :offers, foreign_key: :original_item_id, dependent: :destroy
  has_many :comments

  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_category,
    against: [ :name , :description , :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  CATEGORIES = ["Clothes", "Electronics & Mobile", "Furniture", "Cars & Bikes", "Collectibles & Hobbies", "Others"]

  validates :name, :description, :category, :photos, presence: true
end
