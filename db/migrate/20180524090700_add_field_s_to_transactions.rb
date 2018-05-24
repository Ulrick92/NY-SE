class AddFieldSToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :starts_on, :date
    add_column :transactions, :ends_on, :date
  end
end
