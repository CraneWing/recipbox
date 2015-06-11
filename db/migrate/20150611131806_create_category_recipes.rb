class CreateCategoryRecipes < ActiveRecord::Migration
  def change
    create_table :category_recipes do |t|

      t.timestamps null: false
    end
  end
end
