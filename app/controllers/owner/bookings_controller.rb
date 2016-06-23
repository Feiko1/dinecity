module Owner
  class BookingsController < Owner::BaseController
    before_action :find_restaurant, only: [:new, :create, :booking, :summary, :confirm, :update]
    def index
      @bookings = Booking.all
    end

    def edit
    end

    def update
    end

    private

    def booking_params
      params.require(:booking).permit(:date, :number_of_people, :status, :deal_id, :visitor_first_name, :visitor_last_name, :visitor_email, :price, :visitor_phone)
    end

    def find_booking
      @booking = Booking.find(params[:id])
    end
  end
end
