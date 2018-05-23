class AddAddressToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :address, :string
  end
end
