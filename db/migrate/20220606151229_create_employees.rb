class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      #t.integer :employee_id
      t.integer :personals_id
      #t.references :user_datum, null: false, foreign_key: true
      t.references :user_datum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
