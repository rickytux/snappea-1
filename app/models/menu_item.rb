class MenuItem < ApplicationRecord
  belongs_to :restaurant
  belongs_to :menu_item_category, foreign_key: 'category_id'
  has_many :menu_item_tag
end
