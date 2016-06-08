class BookingsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.deal = @deal
    @booking.user = @user

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
end







