class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :unit, foreign_key: true
      t.string :target_name
      t.string :target_address
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
