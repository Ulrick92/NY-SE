class RemovePriceFromSocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :socks, :price, :integer
  end
end
