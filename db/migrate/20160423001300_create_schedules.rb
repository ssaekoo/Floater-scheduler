class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :user_id, null: false
      t.integer :shift_id, null: false
      t.timestamps null: false
    end
  end
end
