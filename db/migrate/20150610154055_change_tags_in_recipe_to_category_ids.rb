class ChangeTagsInRecipeToCategoryIds < ActiveRecord::Migration
  def up
    rename_column :recipes, :tags, :categories
  end
  
  def down
    rename_column :recipes, :categories, :tags
  end
end
