class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.integer :address_id
      t.timestamps
    end
  end
end
