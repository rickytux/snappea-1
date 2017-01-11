class CreateRestaurantAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_addresses do |t|
      t.integer :restaurant_id
      t.string :street_1
      t.string :street_2
      t.string :country
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
