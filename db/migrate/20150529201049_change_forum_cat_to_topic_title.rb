class ChangeForumCatToTopicTitle < ActiveRecord::Migration
  def self.up
    rename_column :topics, :forum_cat, :title
  end
  
  def self.down
    rename_column :topics, :title, :forum_cat
  end
end
