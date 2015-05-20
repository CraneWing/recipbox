class AddFielsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :limit => 45
    add_column :users, :last_name, :string, :limit => 45
    add_column :users, :username, :string, :limit => 30
    add_column :users, :avatar, :string
    add_column :users, :location, :string
    add_column :users, :profile, :text
  end
end
