class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.string :name
      t.text :description
      t.integer :category_id
      t.timestamps
    end
    add_reference :restaurants, :menu_items, index: true, foreign_key: true
  end
end
