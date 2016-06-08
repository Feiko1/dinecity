class Deal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :bookings, dependent: :destroy
end
