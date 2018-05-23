class AddPayMethodToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :pay_method, :string
  end
end
