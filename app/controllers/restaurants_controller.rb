class RestaurantsController < ApplicationController


  def index
    restaurants = Restaurant.joins(:restaurant_rating)
                      .group(:id)
                      .order(:id)
                      .select('restaurants.id','restaurants.name', 'restaurants.description', 'avg(restaurant_ratings.rating) as rating')
    return render json: restaurants
  end

  def show
    m = MenuItem.joins("LEFT JOIN menu_item_categories ON menu_items.category_id = menu_item_categories.id")
                .where(restaurant_id: params[:id])
                .select('id','name','description','menu_item_categories.name as category')

    return render json: m
  end

end
