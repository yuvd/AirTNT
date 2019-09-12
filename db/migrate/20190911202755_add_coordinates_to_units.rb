class AddCoordinatesToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :latitude, :float
    add_column :units, :longitude, :float
  end
end
