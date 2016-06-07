class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.string :image_string

      t.timestamps null: false
    end
  end
end
