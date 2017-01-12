class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :menu_tags

  def category
    object.menu_item_category.name
  end

  def menu_tags
    object.menu_item_tag.pluck(:tag)
  end
end
