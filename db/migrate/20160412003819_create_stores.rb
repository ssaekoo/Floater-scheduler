class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address, null: false
      t.decimal :longitude
      t.decimal :latitude
      t.integer :store_manager_id
      t.integer :system_id
      t.integer :district_id, null: false
      t.integer :updated_by_id
      t.string :monday_hours
      t.string :tuesday_hours
      t.string :wednesday_hours
      t.string :thursday_hours
      t.string :friday_hours
      t.string :satday_hours
      t.string :sunday_hours
      t.timestamps null: false
    end

    add_index :stores, :store_manager_id
    add_index :stores, :system_id
    add_index :stores, :district_id
  end
end
