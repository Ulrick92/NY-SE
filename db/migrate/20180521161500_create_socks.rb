class CreateSocks < ActiveRecord::Migration[5.2]
  def change
    create_table :socks do |t|
      t.references :user, foreign_key: true
      t.integer :size
      t.string :color
      t.integer :price
      t.text :shipping_method
      t.text :location
      t.string :photo
      t.text :description
      t.integer :cleanliness
      t.string :title

      t.timestamps
    end
  end
end
