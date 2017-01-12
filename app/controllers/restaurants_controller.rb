class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:menu_items]

  def index
    restaurants = Restaurant.includes(:restaurant_address).select('restaurants.*').with_rating.order(:id)

    render json: restaurants
  end

  def menu_items
    render json: @restaurant.menu_items
  end

  private

  def set_restaurant
    @restaurant = Restaurant.select('restaurants.*').with_rating.find(params[:id])
  end
end
