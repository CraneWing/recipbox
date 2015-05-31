class AddBodyToTopics < ActiveRecord::Migration
  def up
    add_column :topics, :body, :text
  end
  
  def down
    remove_column :topics, :body
  end
end
