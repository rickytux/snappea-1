class CreateMenuItemCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_item_categories do |t|
      t.integer :menu_item_id
      t.string :name

      t.timestamps
    end
  end
end
