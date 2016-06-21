class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :deal

  after_create :send_user_booking_request_confirmation_email
  # after_create :send_owner_booking_confirmation_email
  # ^here define logic for when link in confirmation email is pressed,
  # it sends a confirmation to OWNER

  def send_user_booking_request_confirmation_email
    BookingMailer.user_booking_confirmation(self).deliver_now
  end

  # def send_owner_booking_confirmation_email
  #   BookingMailer.user_booking_confirmation(self).deliver_now
  # end

end
