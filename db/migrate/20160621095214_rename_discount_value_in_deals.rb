class RenameDiscountValueInDeals < ActiveRecord::Migration
  def change
    rename_column :deals, :discount_value, :price
  end
end
