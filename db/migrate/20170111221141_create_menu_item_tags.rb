class CreateMenuItemTags < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_item_tags do |t|
      t.integer :menu_item_id
      t.string :tag

      t.timestamps
    end
  end
end
