class Night < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :venues, :through => :favourites
end
