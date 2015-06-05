class RemoveForeignKeysFromPosts < ActiveRecord::Migration
  def change
      remove_foreign_key :comments, :user
      remove_foreign_key :comments, :post
  end
end
