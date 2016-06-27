class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :deal

  after_create :send_user_booking_request_confirmation_email
  # COMMENT THIS BEFORE SEED
  #attr_accessible :deal_id, :first_name, :last_name, :email, :date, :number_of_people, :price  Booking export to CSV
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |booking|
        csv << booking.attributes.values_at(*column_names)
      end
    end
  end

  # after_create :send_owner_booking_confirmation_email
  # ^here define logic for when link in confirmation email is pressed,
  # it sends a confirmation to OWNER

  def send_user_booking_request_confirmation_email
    BookingMailer.user_booking_confirmation(self).deliver_now
  end

  # def send_owner_booking_confirmation_email
  #   BookingMailer.owner_booking_alert(self).deliver_now
  # end

end
