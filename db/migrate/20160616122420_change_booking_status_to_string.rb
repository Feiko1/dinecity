class ChangeBookingStatusToString < ActiveRecord::Migration
  def change
    change_column :bookings, :status, :string
  end
end
