class AddPrepCookAndYieldToRecipes < ActiveRecord::Migration
  def up
    add_column :recipes, :prep, :string
    add_column :recipes, :cook, :string
    add_column :recipes, :yield, :string
  end
  
  def down
    remove_column :recipes, :prep
    remove_column :recipes, :cook
    remove_column :recipes, :yield
  end
end
