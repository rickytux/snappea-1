class Restaurant < ApplicationRecord
  has_one :restaurant_address
  has_many :restaurant_rating
  has_many :menu_items

  scope :with_rating, ->() { joins(:restaurant_rating)
                                 .select('avg(restaurant_ratings.rating) as rating')
                                 .group(:id) }
end
