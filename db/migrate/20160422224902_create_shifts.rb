class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :title, null: false
      t.string :description
      t.integer :store_id, null: false
      t.integer :day_id, null: false
      t.string :start_time, null: false
      t.string :end_time, null: false

      t.timestamps null: false
    end
  end
end
