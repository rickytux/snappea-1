class CreateRestaurantRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_ratings do |t|
      t.integer :restaurant_id
      t.decimal :rating
      t.timestamps
    end
    add_reference :restaurants, :restaurant_ratings, index: true, foreign_key: true
  end
end
