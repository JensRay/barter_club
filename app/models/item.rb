class Item < ApplicationRecord
  belongs_to :user
  has_many :offers_as_my_item, source: :offer, foreign_key: :my_item_id
  has_many :offers_as_original_item, source: :offer, foreign_key: :original_item_id
  has_many :comments

  has_one_attached :photo
  include PgSearch::Model

   pg_search_scope :search_by_name_description_and_category,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
