class CreateMalfunctions < ActiveRecord::Migration[7.0]
  def change
    create_table :malfunctions do |t|
      t.integer :malfunction_id
      t.integer :track_id
      t.date :date
      t.time :time_from
      t.time :time_to
      t.string :comment

      t.timestamps
    end
  end
end
