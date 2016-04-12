class CreateTrainedSystems < ActiveRecord::Migration
  def change
    create_table :trained_systems do |t|
      t.integer :user_id
      t.integer :system_id
      
      t.timestamps null: false
    end
    add_index :trained_systems, :user_id
    add_index :trained_systems, :system_id
  end
end
