class RestaurantsController < ApplicationController

# before_action :find_restaurant, only: [:new, :create, :booking, :summary, :confirm, :update]

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

  def registration
    # RestaurantMailer.registration(restaurant_request_params).deliver_now
    flash[:notice] = "Your information is being processed; you will hear from us within 24 hours"
    redirect_to root_path
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
# @number_of_people = params["number-of-people"]
#     @booking = Booking.new(
#       number_of_people: @number_of_people
#     )
#     @datetime= "#{params['booking-date']} #{params[:time]}"
#     check_user  ##this interpolates


  end

  def create ##check this code it came from LW
    @restaurant = current_user.restaurants.build(restaurant_params)

    if @restaurant.save
      # RestaurantMailer.creation_confirmation(@restaurant).deliver_now
      # ^ COMMENT BEFORE SEED
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
private

def restaurant_request_params
  params.require(:registration).permit(:owner_first_name,
    :owner_last_name,
    :personal_owner_email,
    :personal_owner_phone,
    :restaurant_name,
    :restaurant_address,
    :restaurant_phone,
    :restaurant_email,
    :restaurant_registration_number)
end


end
