class RemoveForeignKeyFromPosts < ActiveRecord::Migration
  def change
    remove_foreign_key :posts, :topic
  end
end
