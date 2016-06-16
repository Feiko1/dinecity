class BookingsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]
  before_action :find_booking, only: [:confirm]
  def new

    @booking = Booking.new
    @number_of_people = params["number-of-people"]
    @datetime= "#{params['booking-date']} #{params[:time]}"
    check_user  ##this interpolates

  end

  def create
    @booking = Booking.create(booking_params)
    @booking.number_of_people = @booking.number_of_people.to_i
    @booking.deal = @deal
    @booking.user = current_user

    @booking.date = @booking.date.to_datetime


    if @booking.save
      redirect_to confirm_restaurant_booking_path(@restaurant, @booking)
    else
      render :new
    end

  end

  def confirm
    @restaurant = find_restaurant
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :number_of_people, :status, :deal_id, :user_id, :visitor_first_name, :visitor_last_name, :visitor_email, :visitor_phone)
  end

  def find_booking
    @booking = Booking.find(params[:id])
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







