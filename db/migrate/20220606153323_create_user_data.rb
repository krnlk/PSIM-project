class CreateUserData < ActiveRecord::Migration[7.0]
  def change
    create_table :user_data do |t|
      t.integer :personals_id
      t.string :first_name
      t.string :last_name
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
