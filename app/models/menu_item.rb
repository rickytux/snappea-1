class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_one :menu_item_category
  has_many :menu_item_tag
end
