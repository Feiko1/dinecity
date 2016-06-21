class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.user_booking_confirmation.subject
  #
  def user_booking_confirmation(booking) #, user, restaurant
    @booking = booking


    if booking.user
      @user = booking.user
      @email = @user.email
      @first_name =@user.first_name
      @last_name = @user.last_name
    else
      @email = booking.visitor_email
      @first_name = booking.visitor_first_name
      @last_name = booking.visitor_last_name
    end

    @restaurant = booking.deal.restaurant

    mail(
      to:       @email,  #@user.email, ##CHECK THIS
      subject:  "Please confirm your booking for a great evening at #{@restaurant}"
      )
  end

  # def owner_booking_request(booking, user, restaurant)
  #   @booking = booking
  #   @user = user
  #   @restaurant = restaurant

  #   mail(
  #     to:       @restaurant.user.email, ##CHECK THIS
  #     subject:  "booking request on #{@booking.date} by #{@owner.first_name} #{@owner.last_name}"
  #     )
  # end
end
