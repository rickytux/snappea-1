class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating, :address

  def address
    object.restaurant_address.full_address
  end
end
