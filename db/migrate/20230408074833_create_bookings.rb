class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :fullName
      t.integer :phone
      t.date :date
      t.integer :guests

      t.timestamps
    end
  end
end
