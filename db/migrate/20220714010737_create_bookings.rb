class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id, foreign_key: true
      t.integer :time
      t.string :date
      t.string :location
      t.string :instrument, foreign_key: true

      t.timestamps
    end
  end
end
