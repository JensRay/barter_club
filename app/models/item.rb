class Item < ApplicationRecord
  belongs_to :user
  has_many :offers, source: :offers, foreign_key: :my_item_id, dependent: :destroy
  has_many :offers, source: :offers, foreign_key: :original_item_id, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, :description, :category, :photos, presence: true

  has_many_attached :photos, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_category,
    against: [ :name , :description , :category ],
    using: {
      tsearch: { prefix: true } 
    }

  CATEGORIES = ["Clothes", "Electronics & Mobile", "Furniture", "Cars & Bikes", "Collectibles & Hobbies", "Sport Equipment", "Others"]
  ALLCATEGORIES = ["All categories", "Clothes", "Electronics & Mobile", "Furniture", "Cars & Bikes", "Collectibles & Hobbies", "Sport Equipment", "Others"]
  
end
