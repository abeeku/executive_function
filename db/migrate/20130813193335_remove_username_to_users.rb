class RemoveUsernameToUsers < ActiveRecord::Migration
  def up
     remove_column :users, :user_name
     add_column :users, :username, :string
  end

  def down
    add_column :users, :user_name, :string
    remove_column :users, :username
  end
end
