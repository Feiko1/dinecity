class BookingsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]

  def new

    @booking = Booking.new
    check_user
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.deal = @deal
    @booking.user = current_user

    if @booking.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :number_of_people, :status, :deal_id, :user_id, :visitor_first_name, :visitor_last_name, :visitor_email, :visitor_phone)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def check_user
    if current_user
      @booking.visitor_first_name = current_user.first_name
      @booking.visitor_last_name  = current_user.last_name
      @booking.visitor_email      = current_user.email
      # @booking.visitor_phone = current_user.email  #TODO --- migrate 'phone number to User table'

      @booking.user_id      = current_user.id
    end
  end
end







