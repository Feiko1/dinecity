class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :deal, index: true, foreign_key: true
      t.datetime :date
      t.integer :number_of_people
      t.boolean :status
      t.string :visitor_first_name
      t.string :visitor_last_name
      t.string :visitor_email
      t.string :visitor_phone

      t.timestamps null: false
    end
  end
end
