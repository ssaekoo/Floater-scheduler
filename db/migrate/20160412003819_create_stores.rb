class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address, null: false
      t.string :store_phone_number
      t.string :pharmacy_phone_number
      t.decimal :longitude
      t.decimal :latitude
      t.integer :store_manager_id
      t.integer :system_id
      t.integer :district_id, null: false
      t.integer :updated_by_id
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
      t.timestamps null: false
    end

    add_index :stores, :store_manager_id
    add_index :stores, :system_id
    add_index :stores, :district_id
  end
end
