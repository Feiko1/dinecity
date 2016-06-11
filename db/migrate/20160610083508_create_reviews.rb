class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
