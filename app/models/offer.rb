class Offer < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id, optional: true
  has_many :wished_offers, dependent: :destroy
  has_many :wishlists, through: :wished_offers
  has_many_attached :pictures
  accepts_nested_attributes_for :pictures_attachments, allow_destroy: true
end
