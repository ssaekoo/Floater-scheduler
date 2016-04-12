class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :district_manager_id, null: false
      t.timestamps null: false
    end
  end
end
