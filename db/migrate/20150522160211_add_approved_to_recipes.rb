class AddApprovedToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :approved, :integer, :default => 0
  end
end
