class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profil, dependent: :destroy
  has_many :offers, inverse_of: :owner, dependent: :destroy
  has_one :wishlist, dependent: :destroy
end
