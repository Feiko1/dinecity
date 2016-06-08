class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @unsplash_counter = 242
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
