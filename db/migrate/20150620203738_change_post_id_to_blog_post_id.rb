class ChangePostIdToBlogPostId < ActiveRecord::Migration
  def up
    rename_column :blog_comments, :post_id, :blog_post_id
  end
  
  def down
    rename_column :blog_comments, :blog_post_id, :post_id
  end
end
