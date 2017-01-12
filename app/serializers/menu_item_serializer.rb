class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :menu_category, :menu_tags

  def menu_category
    object.menu_item_category.name
  end

  def menu_tags
    object.menu_item_tag.pluck(:tag)
  end
end
