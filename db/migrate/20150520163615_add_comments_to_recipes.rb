class AddCommentsToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :comments, :text
  end
  
  def self.down
    remove_column :recipes, :comments
  end
end
