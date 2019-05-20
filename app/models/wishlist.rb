class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wished_offers, dependent: :destroy
  has_many :offers, through: :wished_offers
end
