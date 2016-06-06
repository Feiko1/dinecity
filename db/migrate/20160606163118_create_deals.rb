class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
