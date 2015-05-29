class RemoveTopicsFromForumTopics < ActiveRecord::Migration
  def self.up
    remove_column :forum_topics, :topics
  end
  
  def self.down
    add_column :forum_topics, :topics, :string
  end
end
