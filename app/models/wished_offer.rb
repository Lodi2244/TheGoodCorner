class WishedOffer < ApplicationRecord
  belongs_to :wishlist, optional: true
  belongs_to :offer, optional: true 
end
