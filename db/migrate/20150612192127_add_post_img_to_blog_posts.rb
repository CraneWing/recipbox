class AddPostImgToBlogPosts < ActiveRecord::Migration
  def up
    add_column :blog_posts, :blog_img, :string
  end
  
  def dow
    remove_column :blog_posts, :blog_img
  end
end
