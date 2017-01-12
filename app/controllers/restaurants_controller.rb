class RestaurantsController < ApplicationController


  def index
    return render json: Restaurant.all
  end

end
