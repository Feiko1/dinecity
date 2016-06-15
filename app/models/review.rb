class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, length: { minimum: 10 }
  belongs_to :user
end
