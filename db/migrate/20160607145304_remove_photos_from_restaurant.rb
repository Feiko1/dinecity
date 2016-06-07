class RemovePhotosFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :photos, :string
  end
end
