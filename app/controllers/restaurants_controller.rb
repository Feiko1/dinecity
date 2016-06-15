class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @unsplash_counter = 242

    #Search form for index pages
    if params[:search]
      @restaurants = Restaurant.search(params[:search]).order("created_at DESC")
    else
      @restaurants = Restaurant.all.order('created_at DESC')
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])

    @review = Review.new

    @markers = Gmaps4rails.build_markers([@restaurant]) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
  end

end
