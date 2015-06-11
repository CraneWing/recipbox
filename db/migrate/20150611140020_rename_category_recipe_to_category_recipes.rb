class RenameCategoryRecipeToCategoryRecipes < ActiveRecord::Migration
  def self.up
    rename_table :category_recipe, :category_recipes
  end
  
  def self.down
    rename_table :category_recipes, :category_recipe
  end
end
