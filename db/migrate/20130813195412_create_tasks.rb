class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete, default: false, null: false
      t.integer :user_id
      
      t.timestamps
    end
     add_index :tasks, :user_id
  end
end
