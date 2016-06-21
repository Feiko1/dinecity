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
      marker.infowindow render_to_string(:partial => "/restaurants/map_box", locals: {restaurant: restaurant})
    end
  end

  def new

  end

  def create ##check this code it came from LW
    @restaurant = current_user.restaurants.build(restaurant_params)

    if @restaurant.save
      RestaurantMailer.creation_confirmation(@restaurant).deliver_now
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


end
