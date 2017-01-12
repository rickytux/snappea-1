class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:menu_items]

  def index
    restaurants = Restaurant.includes(:restaurant_address).select('restaurants.*').with_rating.order(:id)
    if(params.has_key?(:page))
      restaurants = restaurants.paginate( page: params[:page], per_page: 10)
    end

    render json: restaurants
  end

  def menu_items
    menu_items = @restaurant.menu_items
    if(params.has_key?(:page))
      menu_items = menu_items.paginate( page: params[:page], per_page: 5)
    end

    render json: menu_items
  end

  private

  def set_restaurant
    @restaurant = Restaurant.select('restaurants.*').with_rating.find(params[:id])
  end
end
