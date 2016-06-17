class ChangePhoneNumberTypeInRestaurants < ActiveRecord::Migration
  def change
    change_column :restaurants, :phone_number, :string
  end
end
