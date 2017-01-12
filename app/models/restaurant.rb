class Restaurant < ApplicationRecord
  has_one :restaurant_address
  has_many :restaurant_rating
end
