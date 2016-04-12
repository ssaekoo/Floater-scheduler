class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :name, null: false
      t.integer :permission_id, null: false
      t.integer :updated_by_id
      t.timestamps null: false
    end
  end
end
