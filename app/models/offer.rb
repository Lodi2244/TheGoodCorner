class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :owner, class_name: 'User', inverse_of: :offers
end
