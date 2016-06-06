class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email_address
      t.integer :phone_number
      t.string :photos
      t.integer :rating

      t.timestamps null: false
    end
  end
end
