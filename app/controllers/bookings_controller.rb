class BookingsController < ApplicationController
  before_action :find_booking, only: [:new, :create]

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
    params.require(:booking).permit(:date, :number_of_people, :status)
  end

  def find_booking
    @booking = Booking.find(params[:id])
end







