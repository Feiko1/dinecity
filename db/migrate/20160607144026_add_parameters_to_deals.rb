class AddParametersToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :discount_kind, :string
    add_column :deals, :discount_value, :integer
    add_column :deals, :maximum_deal_capacity, :integer
    add_column :deals, :monday, :boolean
    add_column :deals, :tuesday, :boolean
    add_column :deals, :wednesday, :boolean
    add_column :deals, :thursday, :boolean
    add_column :deals, :friday, :boolean
    add_column :deals, :saturday, :boolean
    add_column :deals, :sunday, :boolean
  end
end
