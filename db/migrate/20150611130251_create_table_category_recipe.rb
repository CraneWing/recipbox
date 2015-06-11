class CreateTableCategoryRecipe < ActiveRecord::Migration
  def change
    create_table :category_recipe, :id => false do |t|
      t.integer :category_id
      t.integer :recipe_id
    end
  end
end
