class Offer < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_many :wished_offers, dependent: :destroy
  has_many :wishlists, through: :wished_offers
  has_many_attached :pictures
  accepts_nested_attributes_for :pictures_attachments, allow_destroy: true

  scope :category, -> (category_id) { where category_id: category_id }
  scope :by_month, lambda  { |month| where("extract(month from created_at) = ?", month) }
  scope :price, -> (price) { where price: price }


  def self.text_search(query)
    if query.present?
      where("title ilike :q or description ilike :q", q: "%#{query}%")
    else
      all
    end
  end
end
