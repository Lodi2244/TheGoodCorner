class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :owner, class_name: 'User', inverse_of: :offers
  has_many :wished_offers, dependent: :destroy
  has_many :wishlists, through: :wished_offers
end
