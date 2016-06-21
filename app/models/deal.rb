class Deal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :bookings, dependent: :destroy
  has_many :courses, dependent: :destroy

end
