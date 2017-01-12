# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if(ApiKey.count == 0)
  ApiKey.create!
end

MenuItemCategory.first_or_create([{name: 'Entree'}, {name: 'Appetizer'}, {name: 'Dessert'}, {name: 'Beverage'}, {name: 'Side'}])
resturants = Restaurant.create([{ name: Faker::Company.name, description: Faker::Lorem.paragraph, address_id: 1 }, { name: Faker::Company.name, description: Faker::Lorem.paragraph}, { name: Faker::Company.name, description: Faker::Lorem.paragraph}, { name: Faker::Company.name, description: Faker::Lorem.paragraph}, { name: Faker::Company.name, description: Faker::Lorem.paragraph}, { name: Faker::Company.name, description: Faker::Lorem.paragraph}, { name: Faker::Company.name, description: Faker::Lorem.paragraph }, { name: Faker::Company.name, description: Faker::Lorem.paragraph }, { name: Faker::Company.name, description: Faker::Lorem.paragraph }, { name: Faker::Company.name, description: Faker::Lorem.paragraph }])
resturants.each do |restaurant|
  address = RestaurantAddress.create(restaurant_id: restaurant.id, street_1: Faker::Address.street_address, street_2: Faker::Address.secondary_address, country: Faker::Address.country, city: Faker::Address.city, zip_code: Faker::Address.zip_code)
  restaurant.address_id = address.id
  restaurant.save

  (1..5).each do
    RestaurantRating.create(restaurant_id: restaurant.id, rating: Faker::Number.between(0, 5))
  end

  (1..5).each do
    menu_item = MenuItem.create(restaurant_id: restaurant.id, name: Faker::Food.ingredient, description: Faker::Food.spice, category_id: MenuItemCategory.order("RANDOM()").first.id)
    (1..5).each do
        MenuItemTag.create(menu_item_id: menu_item.id, tag: Faker::Lorem.word)
    end
  end

end

