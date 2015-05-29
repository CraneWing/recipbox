class RenameForumsToForumTopics < ActiveRecord::Migration
  def self.up
    rename_table :forums, :forum_topics
  end
  
  def self.down
    rename_table :forum_topics, :forums
  end
end
