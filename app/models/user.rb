class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :reviews_as_bidder, through: :offers, source: :reviews
  has_many :offers_as_owner, through: :items, foreign_key: :original_item_id, source: :offers
  has_many :reviews_as_owner, through: :offers_as_owner, source: :reviews

  has_one_attached :photo
end
