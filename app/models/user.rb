class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  has_many :favourites
  has_and_belongs_to_many :nights
end
