class AddCoordinatesToSocks < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :latitude, :float
    add_column :socks, :longitude, :float
  end
end
