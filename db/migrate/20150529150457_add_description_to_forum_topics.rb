class AddDescriptionToForumTopics < ActiveRecord::Migration
  def self.up
    add_column :forum_topics, :description, :text
  end
  
  def self.down
    remove_column :forum_topics, :description
  end
end
