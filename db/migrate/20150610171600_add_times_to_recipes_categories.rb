class AddTimesToRecipesCategories < ActiveRecord::Migration
  def up
    add_column :recipes_categories, :created_at, :datetime
    add_column :recipes_categories, :updated_at, :datetime
  end
  
  def cdown
    remove_column :recipes_categories, :created_at
    remove_column :recipes_categories, :updated_at
  end
end
