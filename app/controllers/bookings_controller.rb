class BookingsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create, :booking, :summary, :confirm, :update]
  before_action :find_booking, only: [:summary, :confirm, :update]

  def index
    @bookings = Booking.all

    #Search form for index pages
    if params[:search]
      @bookings = Booking.search(params[:search]).order("created_at DESC")
    else
      @bookings = Booking.all.order('created_at DESC')
    end
  end

  def new

    @number_of_people = params["number-of-people"]
    @booking = Booking.new(
      number_of_people: @number_of_people
    )
    @datetime= "#{params['booking-date']} #{params[:time]}"
    check_user  ##this interpolates

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.number_of_people = @booking.number_of_people.to_i
    @booking.user = current_user
    @booking.date = @booking.date.to_datetime

    if @booking.save
      flash[:success] = "Please confirm by clicking the link in your email"
      redirect_to summary_restaurant_booking_path(@restaurant, @booking)
    else
      flash[:error] = "Ooooppss, something went wrong!"
      render :new
    end
  end


  def summary
  end

  def confirm
  end

  def update
    @booking.status = "confirmed"
    if @booking.save
      flash[:success] = "Booking Confirmed!"
      BookingMailer.owner_booking_alert(@restaurant.user, @booking, @restaurant).deliver_now
      #^ COMMENT THIS BEFORE SEED
      redirect_to restaurant_path(@restaurant)
    else
      flash[:error] = "oh oh, something went wrong"
      render :new
    end

  end

  private
  def booking_params
    params.require(:booking).permit(:date, :number_of_people, :status, :deal_id, :visitor_first_name, :visitor_last_name, :visitor_email, :visitor_phone)
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







