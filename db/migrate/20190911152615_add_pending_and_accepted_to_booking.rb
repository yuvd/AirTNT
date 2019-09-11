class AddPendingAndAcceptedToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :pending, :boolean, default: true 
    add_column :bookings, :accepted, :boolean, default: false
  end
end
