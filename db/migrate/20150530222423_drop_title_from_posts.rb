class DropTitleFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :title
  end
  
  def down
    add_column :posts, :title
  end
end
