class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.integer :personals_id

      t.timestamps
    end
  end
end
