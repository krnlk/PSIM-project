class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :reservation_id
      t.date :date
      t.time :time_from
      t.time :time_to
      t.integer :price_id
      t.integer :track_id
      t.integer :shoes_id
      t.integer :client_id

      t.timestamps
    end
  end
end
