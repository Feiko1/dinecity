class AddRestaurantIdToDeals < ActiveRecord::Migration
  def change
    add_reference :deals, :restaurant, index: true, foreign_key: true
  end
end
