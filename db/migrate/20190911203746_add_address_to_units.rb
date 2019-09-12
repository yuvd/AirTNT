class AddAddressToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :address, :string
  end
end
