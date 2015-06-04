class RemoveUserForeignKeyFromPosts < ActiveRecord::Migration
  def change
     remove_foreign_key :posts, :user
  end
end
