class AddParametersToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :street_name, :string
    add_column :restaurants, :street_number, :integer
    add_column :restaurants, :city_name, :string
    add_column :restaurants, :country_name, :string
    add_column :restaurants, :postal_code, :string
  end
end
