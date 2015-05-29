class Change < ActiveRecord::Migration
  def self.up
    rename_table :forum_topics, :topics
  end
  
  def self.down
    rename_table :topics, :forum_topics
  end
end
