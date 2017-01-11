class CreateRestaurantRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_ratings do |t|
      t.integer :restaurant_id
      t.decimal :rating

      t.timestamps
    end
  end
end
