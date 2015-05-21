class AddImageToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :recipe_img, :string
  end
end
