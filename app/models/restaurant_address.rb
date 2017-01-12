class RestaurantAddress < ApplicationRecord
  belongs_to :restaurant

  def address
    [street_1, street_2, city, country, zip_code].join(' ')
  end
end
