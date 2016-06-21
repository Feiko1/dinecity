class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :description
      t.references :deal

      t.timestamps null: false
      t.references :deal, index: true, foreign_key: true
    end
  end
end
