class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :email
      t.string :phone_number
      t.date :hire_date
      t.string :address, null: false
      t.decimal :longitude
      t.decimal :latitude
      t.integer :user_type_id, null: false
      t.integer :district_id
      t.integer :store_id
      t.integer :training_id
      t.timestamps null: false
    end

    add_index :users, :district_id
    add_index :users, :store_id
    add_index :users, :training_id
    add_index :users, :user_type_id
  end
end
