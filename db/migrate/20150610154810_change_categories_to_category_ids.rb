class ChangeCategoriesToCategoryIds < ActiveRecord::Migration
  def up
    rename_column :recipes, :categories, :category_ids
  end
  
  def down
    rename_column :recipes, :category_ids, :categories
  end
end
