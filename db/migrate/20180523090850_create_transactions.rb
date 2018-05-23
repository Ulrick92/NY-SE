class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :sock, foreign_key: true
      t.string :statut

      t.timestamps
    end
  end
end
