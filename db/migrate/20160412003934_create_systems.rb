class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name, null: false
      t.integer :updated_by_id
      t.timestamps null: false
    end
  end
end
