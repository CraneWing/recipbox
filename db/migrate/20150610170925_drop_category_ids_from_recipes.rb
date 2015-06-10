class DropCategoryIdsFromRecipes < ActiveRecord::Migration
  def up
    remove_column :recipes, :category_ids
  end
  
  def down
    add_column :recipes, :category_ids
  end
end
