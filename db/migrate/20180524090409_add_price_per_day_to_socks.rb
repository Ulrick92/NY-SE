class AddPricePerDayToSocks < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :price_per_day, :integer
  end
end
